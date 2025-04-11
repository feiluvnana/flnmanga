part of 'browse_bloc.dart';

sealed class BrowseEvent {
  const BrowseEvent();
}

@MappableClass()
class BrowseMangasFetched extends BrowseEvent with BrowseMangasFetchedMappable {
  const BrowseMangasFetched();
}

@MappableClass()
class BrowseSearchParamsChanged extends BrowseEvent with BrowseSearchParamsChangedMappable {
  final String? title;

  const BrowseSearchParamsChanged({this.title});
}

@MappableClass()
class BrowserMangasRefreshed extends BrowseEvent with BrowserMangasRefreshedMappable {
  const BrowserMangasRefreshed();
}
