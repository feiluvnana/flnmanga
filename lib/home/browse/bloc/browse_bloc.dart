import 'package:async/async.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;

part 'browse_bloc.mapper.dart';
part 'browse_event.dart';
part 'browse_state.dart';

class BrowseBloc extends Bloc<BrowseEvent, BrowseState> {
  final mgd.MangadexApi _api;
  final Map<String, CancelableOperation> _operations;

  BrowseBloc({required mgd.MangadexApi api})
    : _api = api,
      _operations = {},
      super(
        const BrowseState(
          status: BrowseStatus.loading,
          mangas: [],
          offsets: [],
          limit: 18,
          total: 0,
          hasNextPage: true,
          filter: BrowseFilter(),
        ),
      ) {
    on<BrowseMangasFetched>(_onMangaFetched, transformer: droppable());
    on<BrowserMangasRefreshed>(_onMangaRefreshed, transformer: droppable());
    on<BrowseSearchParamsChanged>(_onSearchParamsChanged, transformer: droppable());
  }

  Future<void> _onMangaFetched(BrowseMangasFetched event, Emitter<BrowseState> emit) async {
    // If the state is already data and the mangas length is greater than or equal to the total, return;
    final mangasLength = state.mangas.isEmpty ? 0 : state.mangas.map((e) => e.length).reduce((a, b) => a + b);
    if (state.status == BrowseStatus.data && mangasLength >= state.total) return;

    // Setup the operation
    emit(state.copyWith(status: BrowseStatus.loading));
    final operation = CancelableOperation.fromFuture(
      _api.getMangas(
        limit: state.limit,
        offset: state.offsets.isEmpty ? 0 : state.offsets.last + state.limit,
        includes: mgd.MangaIncludesOptions().coverArt(),
        title: state.filter.title,
        includedTags: state.filter.includedTags,
        includedTagsMode: state.filter.includedTagsMode,
        excludedTags: state.filter.excludedTags,
        excludedTagsMode: state.filter.excludedTagsMode,
      ),
    );
    _operations[state.toString()] = operation;

    try {
      // Get the response
      final response = await operation.value;
      final newMangas = [...state.mangas, response.data];
      final newOffsets = [...state.offsets, response.offset];
      final newHasNextPage = response.offset + response.limit < response.total;
      emit(
        state.copyWith(
          status: BrowseStatus.data,
          mangas: newMangas,
          offsets: newOffsets,
          hasNextPage: newHasNextPage,
          total: response.total,
        ),
      );
    } catch (e) {
      // If there is an error, emit the error state
      emit(state.copyWith(status: BrowseStatus.error));
    } finally {
      // Remove the operation from the map
      _operations.remove(state.toString());
    }
  }

  Future<void> _onMangaRefreshed(BrowserMangasRefreshed event, Emitter<BrowseState> emit) async {
    await _api.wipeCache();
    emit(state.copyWith(status: BrowseStatus.loading, mangas: [], offsets: [], hasNextPage: true, total: 0));
    add(const BrowseMangasFetched());
  }

  Future<void> _onSearchParamsChanged(BrowseSearchParamsChanged event, Emitter<BrowseState> emit) async {
    emit(state.copyWith(filter: event.fn(state.filter)));
  }

  @override
  Future<void> close() async {
    await Future.wait(_operations.values.map((e) => e.cancel()));
    _operations.clear();
    return super.close();
  }
}
