part of 'chapter_bloc.dart';

sealed class ChapterState {
  const ChapterState();
}

@MappableClass()
class ChapterInitialState extends ChapterState {
  const ChapterInitialState();
}

enum ImageStatus { loading, data, error }

@MappableClass()
class ChapterChapterFetchedState extends ChapterState {
  final ImageStatus status;
  final mgd.Chapter chapter;
  final List<String> urls;

  const ChapterChapterFetchedState({required this.status, required this.chapter, required this.urls});
}
