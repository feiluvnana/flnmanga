import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/src/models/attributes.dart';
import 'package:mangadexapi/src/models/enums.dart';
import 'package:mangadexapi/src/utils/uuid.dart';

part 'relationships.mapper.dart';

bool _checkType(dynamic raw, RelationshipType value) => raw is Map && raw["type"] == value.name;

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidMapper()])
sealed class Relationship with RelationshipMappable {
  final Uuid id;

  const Relationship({required this.id});
}

@MappableClass(discriminatorValue: AuthorRelationship.checkType)
class AuthorRelationship extends Relationship with AuthorRelationshipMappable {
  final AuthorAttributes? attributes;

  const AuthorRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.author);
  }
}

@MappableClass(discriminatorValue: CoverArtRelationship.checkType)
class CoverArtRelationship extends Relationship with CoverArtRelationshipMappable {
  final CoverArtAttributes? attributes;

  const CoverArtRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.cover_art);
  }
}

@MappableClass(discriminatorValue: MangaRelationship.checkType)
class MangaRelationship extends Relationship with MangaRelationshipMappable {
  final MangaRelated? related;
  final MangaAttributes? attributes;

  const MangaRelationship({required super.id, this.related, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.manga);
  }
}

@MappableClass(discriminatorValue: TagRelationship.checkType)
class TagRelationship extends Relationship with TagRelationshipMappable {
  final TagAttributes? attributes;

  const TagRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.tag);
  }
}

@MappableClass(discriminatorValue: ScanlationGroupRelationship.checkType)
class ScanlationGroupRelationship extends Relationship with ScanlationGroupRelationshipMappable {
  final ScanlationGroupAttributes? attributes;

  const ScanlationGroupRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.scanlation_group);
  }
}

@MappableClass(discriminatorValue: UserRelationship.checkType)
class UserRelationship extends Relationship with UserRelationshipMappable {
  final UserAttributes? attributes;

  const UserRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.user);
  }
}

@MappableClass(discriminatorValue: CreatorRelationship.checkType)
class CreatorRelationship extends Relationship with CreatorRelationshipMappable {
  final UserAttributes? attributes;

  const CreatorRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.creator);
  }
}

@MappableClass(discriminatorValue: ArtistRelationship.checkType)
class ArtistRelationship extends Relationship with ArtistRelationshipMappable {
  final AuthorAttributes? attributes;

  const ArtistRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.artist);
  }
}

@MappableClass(discriminatorValue: LeaderRelationship.checkType)
class LeaderRelationship extends Relationship with LeaderRelationshipMappable {
  final UserAttributes? attributes;

  const LeaderRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.leader);
  }
}

@MappableClass(discriminatorValue: MemberRelationship.checkType)
class MemberRelationship extends Relationship with MemberRelationshipMappable {
  final UserAttributes? attributes;

  const MemberRelationship({required super.id, this.attributes});

  static bool checkType(value) {
    return _checkType(value, RelationshipType.member);
  }
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultRelationship extends Relationship with DefaultRelationshipMappable {
  final RelationshipType type;

  const DefaultRelationship({required super.id, required this.type});
}
