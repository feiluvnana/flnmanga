part of 'manga_bloc.dart';

sealed class MangaEvent {
  const MangaEvent();
}

@MappableClass()
class MangaLoaded extends MangaEvent with MangaLoadedMappable {
  final Uuid mangaId;

  const MangaLoaded({required this.mangaId});
}

@MappableClass()
class MangaChaptersFetched extends MangaEvent with MangaChaptersFetchedMappable {
  const MangaChaptersFetched();
}
