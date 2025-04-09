import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/src/models/attribute.dart';

part 'relationship.mapper.dart';

@MappableClass(discriminatorKey: "type")
abstract class Relationship with RelationshipMappable {
  final String id;

  Relationship({required this.id});
}

@MappableClass(discriminatorValue: "manga")
class MangaRelationship extends Relationship with MangaRelationshipMappable {
  final String related;
  final MangaAttributes? attributes;

  MangaRelationship({required super.id, required this.related, this.attributes});
}

@MappableClass(discriminatorValue: "cover_art")
class CoverArtRelationship extends Relationship with CoverArtRelationshipMappable {
  CoverArtRelationship({required super.id});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultRelationship extends Relationship with DefaultRelationshipMappable {
  DefaultRelationship({required super.id});
}
