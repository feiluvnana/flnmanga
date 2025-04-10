import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/src/models/attributes.dart';
import 'package:mangadexapi/src/models/enums.dart';
import 'package:mangadexapi/src/utils/uuid.dart';

part 'relationships.mapper.dart';

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidMapper()])
abstract class Relationship with RelationshipMappable {
  final Uuid id;

  Relationship({required this.id});
}

@MappableClass(discriminatorValue: RelationshipType.author)
class AuthorRelationship extends Relationship with AuthorRelationshipMappable {
  final AuthorAttributes? attributes;

  AuthorRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.cover_art)
class CoverArtRelationship extends Relationship with CoverArtRelationshipMappable {
  final CoverArtAttributes? attributes;

  CoverArtRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.manga)
class MangaRelationship extends Relationship with MangaRelationshipMappable {
  final MangaRelated? related;
  final MangaAttributes? attributes;

  MangaRelationship({required super.id, this.related, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.tag)
class TagRelationship extends Relationship with TagRelationshipMappable {
  final TagAttributes? attributes;

  TagRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.scanlation_group)
class ScanlationGroupRelationship extends Relationship with ScanlationGroupRelationshipMappable {
  final ScanlationGroupAttributes? attributes;

  ScanlationGroupRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.user)
class UserRelationship extends Relationship with UserRelationshipMappable {
  final UserAttributes? attributes;

  UserRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.creator)
class CreatorRelationship extends Relationship with CreatorRelationshipMappable {
  final UserAttributes? attributes;

  CreatorRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.artist)
class ArtistRelationship extends Relationship with ArtistRelationshipMappable {
  final AuthorAttributes? attributes;

  ArtistRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.reason)
class ReasonRelationship extends Relationship with ReasonRelationshipMappable {
  final ReasonAttributes? attributes;

  ReasonRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.leader)
class LeaderRelationship extends Relationship with LeaderRelationshipMappable {
  final UserAttributes? attributes;

  LeaderRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: RelationshipType.member)
class MemberRelationship extends Relationship with MemberRelationshipMappable {
  final UserAttributes? attributes;

  MemberRelationship({required super.id, this.attributes});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultRelationship extends Relationship with DefaultRelationshipMappable {
  final String type;

  DefaultRelationship({required super.id, required this.type});
}
