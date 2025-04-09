import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/model/enum.dart';
import 'package:mangadexapi/src/util.dart';
import 'package:uuid/uuid.dart';

part 'entity.mapper.dart';

@MappableClass(discriminatorKey: "type", includeCustomMappers: [UuidValueMapper()])
abstract class Entity with EntityMappable {
  final UuidValue id;
  final List<Relationship> relationships;

  const Entity({required this.id, required this.relationships});
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

@MappableClass(discriminatorValue: EntityType.manga)
class Manga extends Entity with MangaMappable {
  final MangaAttributes attributes;

  const Manga({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: EntityType.tag)
class Tag extends Entity with TagMappable {
  final TagAttributes attributes;

  const Tag({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultEntity extends Entity with DefaultEntityMappable {
  final String type;

  const DefaultEntity({required super.id, required super.relationships, required this.type});
}
