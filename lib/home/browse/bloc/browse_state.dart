part of 'browse_bloc.dart';

@MappableEnum()
enum BrowseStatus { loading, data, error }

@MappableClass()
class BrowseState with BrowseStateMappable {
  final BrowseStatus status;
  final List<List<Manga>> mangas;
  final List<int> offsets;
  final int limit;
  final int total;
  final bool hasNextPage;
  final BrowseSearchParams searchParams;

  const BrowseState({
    required this.status,
    this.mangas = const [],
    this.offsets = const [],
    this.limit = 18,
    this.total = 0,
    this.hasNextPage = true,
    this.searchParams = const BrowseSearchParams(),
  });
}

@MappableClass()
class BrowseSearchParams with BrowseSearchParamsMappable {
  final String? title;

  const BrowseSearchParams({this.title});
}
