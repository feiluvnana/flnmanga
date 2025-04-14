part of 'manga_bloc.dart';

@MappableClass()
sealed class MangaState with MangaStateMappable {
  const MangaState();
}

@MappableClass()
class MangaInitialState extends MangaState with MangaInitialStateMappable {
  const MangaInitialState();
}

enum ChapterStatus { loading, data, error }

@MappableClass()
class MangaFetchedState extends MangaState with MangaFetchedStateMappable {
  final mgd.Manga manga;
  final ChapterStatus status;
  final List<List<mgd.Chapter>> chapters;
  final List<int> offsets;
  final int limit;
  final int total;
  final bool hasNextPage;

  const MangaFetchedState({
    required this.manga,
    required this.status,
    required this.chapters,
    required this.offsets,
    required this.limit,
    required this.total,
    required this.hasNextPage,
  });
}
