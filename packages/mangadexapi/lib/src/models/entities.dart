import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/models/enums.dart';

part 'entities.mapper.dart';

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidMapper()])
abstract class Entity with EntityMappable {
  final Uuid id;
  final List<Relationship> relationships;

  const Entity({required this.id, required this.relationships});
}

@MappableClass(discriminatorValue: EntityType.api_client)
class ApiClient extends Entity with ApiClientMappable {
  final ApiClientAttributes attributes;

  const ApiClient({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.author)
class Author extends Entity with AuthorMappable {
  final AuthorAttributes attributes;

  const Author({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.chapter)
class Chapter extends Entity with ChapterMappable {
  final ChapterAttributes attributes;

  const Chapter({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.cover_art)
class CoverArt extends Entity with CoverArtMappable {
  final CoverArtAttributes attributes;

  const CoverArt({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.custom_list)
class CustomList extends Entity with CustomListMappable {
  final CustomListAttributes attributes;

  const CustomList({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.mapping_id)
class MappingId extends Entity with MappingIdMappable {
  final MappingIdAttributes attributes;

  const MappingId({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.manga)
class Manga extends Entity with MangaMappable {
  final MangaAttributes attributes;

  const Manga({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.manga_relation)
class MangaRelation extends Entity with MangaRelationMappable {
  final MangaRelationAttributes attributes;

  const MangaRelation({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.scanlation_group)
class ScanlationGroup extends Entity with ScanlationGroupMappable {
  final ScanlationGroupAttributes attributes;

  const ScanlationGroup({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.tag)
class Tag extends Entity with TagMappable {
  final TagAttributes attributes;

  const Tag({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.user)
class User extends Entity with UserMappable {
  final UserAttributes attributes;

  const User({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultEntity extends Entity with DefaultEntityMappable {
  final String type;

  const DefaultEntity({required super.id, required super.relationships, required this.type});
}
