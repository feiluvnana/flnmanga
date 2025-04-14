import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;

part 'tag_bloc.mapper.dart';
part 'tag_event.dart';
part 'tag_state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  final mgd.MangadexApi _api;

  TagBloc({required mgd.MangadexApi api}) : _api = api, super(const TagState(status: TagStatus.loading, tags: [])) {
    on<TagFetched>(_onTagFetched, transformer: droppable());
  }

  Future<void> _onTagFetched(TagFetched event, Emitter<TagState> emit) async {
    emit(state.copyWith(status: TagStatus.loading));
    try {
      final tags = await _api.getTags();
      emit(state.copyWith(status: TagStatus.data, tags: tags.data));
    } catch (e) {
      emit(state.copyWith(status: TagStatus.error));
    }
  }
}
