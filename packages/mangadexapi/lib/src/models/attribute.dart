import 'package:dart_mappable/dart_mappable.dart';

part 'attribute.mapper.dart';

@MappableClass()
class MangaAttributes with MangaAttributesMappable {
  final Map<String, String> title;
  final List<Map<String, String>>? altTitles;
  final Map<String, String>? description;
  final String status;
  final int? year;
  final String contentRating;
  final List<Map<String, dynamic>>? tags;

  MangaAttributes({
    required this.title,
    this.altTitles,
    this.description,
    required this.status,
    this.year,
    required this.contentRating,
    this.tags,
  });
}
