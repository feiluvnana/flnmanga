part of 'chapter_bloc.dart';

sealed class ChapterEvent {
  const ChapterEvent();
}

@MappableClass()
class ChapterChapterFetched extends ChapterEvent with ChapterChapterFetchedMappable {
  final mgd.Uuid chapterId;

  const ChapterChapterFetched({required this.chapterId});
}
