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
class MangaLoadedState extends MangaState with MangaLoadedStateMappable {
  final Manga manga;
  final ChapterStatus status;
  final List<List<Chapter>> chapters;
  final List<int> offsets;
  final int limit;
  final int total;
  final bool hasNextPage;

  const MangaLoadedState({
    required this.manga,
    required this.status,
    this.chapters = const [],
    this.offsets = const [],
    this.limit = 20,
    this.total = 0,
    this.hasNextPage = true,
  });
}
