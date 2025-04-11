import 'package:async/async.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangadexapi/mangadexapi.dart';

part 'manga_bloc.mapper.dart';
part 'manga_event.dart';
part 'manga_state.dart';

class MangaBloc extends Bloc<MangaEvent, MangaState> {
  final MangadexApi _api;
  final Map<String, CancelableOperation> _operations;

  MangaBloc({required MangadexApi api}) : _api = api, _operations = {}, super(const MangaInitialState()) {
    on<MangaLoaded>(_onMangaLoaded, transformer: droppable());
    on<MangaChaptersFetched>(_onChaptersFetched, transformer: droppable());
  }

  Future<void> _onMangaLoaded(MangaLoaded event, Emitter<MangaState> emit) async {
    if (state is! MangaInitialState) return;
    final manga = await _api.getMangaById(event.mangaId, includes: MangaIncludesOptions().coverArt());
    emit(MangaLoadedState(status: ChapterStatus.loading, manga: manga.data));
  }

  Future<void> _onChaptersFetched(MangaChaptersFetched event, Emitter<MangaState> emit) async {
    if (state case MangaLoadedState s) {
      final chaptersLength = s.chapters.isEmpty ? 0 : s.chapters.map((e) => e.length).reduce((a, b) => a + b);
      if (s.status == ChapterStatus.data && chaptersLength >= s.total) return;

      emit(s.copyWith(status: ChapterStatus.loading));
      final operation = CancelableOperation.fromFuture(
        _api.getFeedByMangaId(
          s.manga.id,
          limit: s.limit,
          offset: s.offsets.isEmpty ? 0 : s.offsets.last + s.limit,
          includes: ChapterIncludesOptions().scanlationGroup(),
        ),
      );
      _operations[s.toString()] = operation;

      try {
        final response = await operation.value;
        emit(
          s.copyWith(
            status: ChapterStatus.data,
            chapters: [...s.chapters, response.data],
            offsets: [...s.offsets, response.offset],
            hasNextPage: response.offset + response.limit < response.total,
            total: response.total,
          ),
        );
      } catch (e) {
        print(e);
        emit(s.copyWith(status: ChapterStatus.error));
      } finally {
        _operations.remove(s.toString());
      }
    }
  }

  @override
  Future<void> close() async {
    await Future.wait(_operations.values.map((e) => e.cancel()));
    _operations.clear();
    return super.close();
  }
}
