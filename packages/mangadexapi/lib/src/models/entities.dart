import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';

part 'entities.mapper.dart';

bool _checkType(dynamic raw, EntityType value) => raw is Map && raw["type"] == value.name;

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidMapper()])
sealed class Entity with EntityMappable {
  final Uuid id;
  final List<Relationship> relationships;

  const Entity({required this.id, required this.relationships});
}

@MappableClass(discriminatorValue: Author.checkType)
class Author extends Entity with AuthorMappable {
  final AuthorAttributes attributes;

  const Author({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.author);
  }
}

@MappableClass(discriminatorValue: Chapter.checkType)
class Chapter extends Entity with ChapterMappable {
  final ChapterAttributes attributes;

  const Chapter({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.chapter);
  }
}

@MappableClass(discriminatorValue: CoverArt.checkType)
class CoverArt extends Entity with CoverArtMappable {
  final CoverArtAttributes attributes;

  const CoverArt({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.cover_art);
  }
}

@MappableClass(discriminatorValue: CustomList.checkType)
class CustomList extends Entity with CustomListMappable {
  final CustomListAttributes attributes;

  const CustomList({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.custom_list);
  }
}

@MappableClass(discriminatorValue: MappingId.checkType)
class MappingId extends Entity with MappingIdMappable {
  final MappingIdAttributes attributes;

  const MappingId({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.mapping_id);
  }
}

@MappableClass(discriminatorValue: Manga.checkType)
class Manga extends Entity with MangaMappable {
  final MangaAttributes attributes;

  const Manga({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.manga);
  }
}

@MappableClass(discriminatorValue: MangaRelation.checkType)
class MangaRelation extends Entity with MangaRelationMappable {
  final MangaRelationAttributes attributes;

  const MangaRelation({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.manga_relation);
  }
}

@MappableClass(discriminatorValue: ScanlationGroup.checkType)
class ScanlationGroup extends Entity with ScanlationGroupMappable {
  final ScanlationGroupAttributes attributes;

  const ScanlationGroup({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.scanlation_group);
  }
}

@MappableClass(discriminatorValue: Tag.checkType)
class Tag extends Entity with TagMappable {
  final TagAttributes attributes;

  const Tag({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.tag);
  }
}

@MappableClass(discriminatorValue: User.checkType)
class User extends Entity with UserMappable {
  final UserAttributes attributes;

  const User({required super.id, required this.attributes, required super.relationships});

  static bool checkType(value) {
    return _checkType(value, EntityType.user);
  }
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultEntity extends Entity with DefaultEntityMappable {
  final EntityType type;

  const DefaultEntity({required super.id, required this.type, required super.relationships});
}
