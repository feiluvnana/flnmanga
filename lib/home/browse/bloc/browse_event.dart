part of 'browse_bloc.dart';

sealed class BrowseEvent {
  const BrowseEvent();
}

@MappableClass()
class BrowseMangasFetched extends BrowseEvent with BrowseMangasFetchedMappable {
  const BrowseMangasFetched();
}

@MappableClass()
class BrowserMangasRefreshed extends BrowseEvent with BrowserMangasRefreshedMappable {
  const BrowserMangasRefreshed();
}

@MappableClass()
class BrowseSearchParamsChanged extends BrowseEvent with BrowseSearchParamsChangedMappable {
  final BrowseFilter Function(BrowseFilter) fn;

  const BrowseSearchParamsChanged({required this.fn});
}
