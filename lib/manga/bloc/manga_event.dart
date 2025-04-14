part of 'manga_bloc.dart';

sealed class MangaEvent {
  const MangaEvent();
}

@MappableClass()
class MangaFetched extends MangaEvent with MangaFetchedMappable {
  final mgd.Uuid mangaId;

  const MangaFetched({required this.mangaId});
}

@MappableClass()
class MangaChaptersFetched extends MangaEvent with MangaChaptersFetchedMappable {
  const MangaChaptersFetched();
}
