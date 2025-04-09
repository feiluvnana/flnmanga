import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/models/attribute.dart';

part 'entity.mapper.dart';

@MappableClass(discriminatorKey: "type")
abstract class Entity with EntityMappable {
  final String id;
  final List<Relationship> relationships;

  Entity({required this.id, required this.relationships});
}

@MappableClass(discriminatorValue: "manga")
class Manga extends Entity with MangaMappable {
  final MangaAttributes attributes;

  Manga({required super.id, required this.attributes, required super.relationships});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class DefaultEntity extends Entity with DefaultEntityMappable {
  DefaultEntity({required super.id, required super.relationships});
}
