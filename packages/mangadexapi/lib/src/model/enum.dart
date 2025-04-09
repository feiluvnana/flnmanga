import 'package:dart_mappable/dart_mappable.dart';

part 'enum.mapper.dart';

@MappableEnum()
// ignore: constant_identifier_names
enum EntityType { author, chapter, manga, tag, cover_art }

@MappableEnum()
enum PublicationDemographic { shoujo, shounen, seinen, josei, none }

@MappableEnum()
enum Status { completed, ongoing, cancelled, hiatus }

@MappableEnum()
enum ContentRating { safe, suggestive, erotica, pornographic }

@MappableEnum()
enum State { draft, submitted, published, rejected }

@MappableEnum()
enum Order { asc, desc }
