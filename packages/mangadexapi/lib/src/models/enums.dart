import 'package:dart_mappable/dart_mappable.dart';

part 'enums.mapper.dart';

@MappableEnum()
enum LegacyType { manga, chapter, tag, group }

@MappableEnum()
enum EntityType {
  // ignore: constant_identifier_names
  api_client,
  author,
  chapter,
  // ignore: constant_identifier_names
  cover_art,
  // ignore: constant_identifier_names
  custom_list,
  // ignore: constant_identifier_names
  mapping_id,
  // ignore: constant_identifier_names
  manga,
  // ignore: constant_identifier_names
  manga_relation,
  tag,
  // ignore: constant_identifier_names
  scanlation_group,
  user,
}

@MappableEnum()
enum RelationshipType {
  author,
  // ignore: constant_identifier_names
  cover_art,
  // ignore: constant_identifier_names
  manga,
  tag,
  // ignore: constant_identifier_names
  scanlation_group,
  user,
  creator,
  artist,
  reason,
  leader,
  member,
}

@MappableEnum()
enum ApiClientState { requested, approved, rejected, autoapproved }

@MappableEnum()
enum CustomListVisibility { public, private }

@MappableEnum()
enum MangaContentRating { safe, suggestive, erotica, pornographic }

@MappableEnum()
enum MangaPublicationDemographic { shoujo, shounen, seinen, josei, none }

@MappableEnum()
enum MangaState { draft, submitted, published, rejected }

@MappableEnum()
enum MangaStatus { completed, ongoing, cancelled, hiatus }
