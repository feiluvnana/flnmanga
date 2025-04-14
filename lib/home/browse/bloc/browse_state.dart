part of 'browse_bloc.dart';

@MappableEnum()
enum BrowseStatus { loading, data, error }

@MappableClass()
class BrowseState with BrowseStateMappable {
  final BrowseStatus status;
  final List<List<mgd.Manga>> mangas;
  final List<int> offsets;
  final int limit;
  final int total;
  final bool hasNextPage;
  final BrowseFilter filter;

  const BrowseState({
    required this.status,
    required this.mangas,
    required this.offsets,
    required this.limit,
    required this.total,
    required this.hasNextPage,
    required this.filter,
  });
}

@MappableClass()
class BrowseFilter with BrowseFilterMappable {
  final String? title;
  final List<mgd.Uuid>? includedTags;
  final mgd.Condition? includedTagsMode;
  final List<mgd.Uuid>? excludedTags;
  final mgd.Condition? excludedTagsMode;

  const BrowseFilter({this.title, this.includedTags, this.includedTagsMode, this.excludedTags, this.excludedTagsMode});

  bool get isSearching =>
      title?.isNotEmpty == true ||
      includedTags?.isNotEmpty == true ||
      excludedTags?.isNotEmpty == true ||
      includedTagsMode != null ||
      excludedTagsMode != null;
}
