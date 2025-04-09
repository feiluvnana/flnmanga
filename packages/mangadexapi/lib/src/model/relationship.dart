import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/src/model/attribute.dart';
import 'package:mangadexapi/src/model/enum.dart';
import 'package:mangadexapi/src/util.dart';
import 'package:uuid/uuid.dart';

part 'relationship.mapper.dart';

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidValueMapper()])
abstract class Relationship with RelationshipMappable {
  final UuidValue id;

  Relationship({required this.id});
}

@MappableEnum()
enum MangaRelated {
  monochrome,
  // ignore: constant_identifier_names
  main_story,
  // ignore: constant_identifier_names
  adapted_from,
  // ignore: constant_identifier_names
  based_on,
  prequel,
  // ignore: constant_identifier_names
  side_story,
  doujinshi,
  // ignore: constant_identifier_names
  same_franchise,
  // ignore: constant_identifier_names
  shared_universe,
  sequel,
  // ignore: constant_identifier_names
  spin_off,
  // ignore: constant_identifier_names
  alternate_story,
  // ignore: constant_identifier_names
  alternate_version,
  preserialization,
  colored,
  serialization,
}

@MappableClass(discriminatorValue: EntityType.cover_art)
class CoverArtRelationship extends Relationship with CoverArtRelationshipMappable {
  CoverArtRelationship({required super.id});
}

@MappableClass(discriminatorValue: EntityType.manga)
class MangaRelationship extends Relationship with MangaRelationshipMappable {
  final MangaRelated? related;
  final MangaAttributes? attributes;

  MangaRelationship({required super.id, this.related, this.attributes});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultRelationship extends Relationship with DefaultRelationshipMappable {
  final String type;

  DefaultRelationship({required super.id, required this.type});
}
