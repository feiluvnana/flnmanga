import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangadexapi/mangadexapi.dart' as mgd;

part 'chapter_bloc.mapper.dart';
part 'chapter_event.dart';
part 'chapter_state.dart';

class ChapterBloc extends Bloc<ChapterEvent, ChapterState> {
  final mgd.MangadexApi _api;

  ChapterBloc({required mgd.MangadexApi api}) : _api = api, super(const ChapterInitialState()) {
    on<ChapterChapterFetched>(_onChapterFetched, transformer: droppable());
  }

  Future<void> _onChapterFetched(ChapterChapterFetched event, Emitter<ChapterState> emit) async {
    if (state is! ChapterInitialState) return;
    final chapter = await _api.getChapterById(event.chapterId).then((value) => value.data);
    final urls = await _api.getAtHomeByChapterId(chapter.id).then((value) => value.dataUrls);
    emit(ChapterChapterFetchedState(status: ImageStatus.data, chapter: chapter, urls: urls));
  }
}
