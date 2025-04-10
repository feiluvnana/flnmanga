import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/src/models/enums.dart';

part 'requests.mapper.dart';

@MappableEnum()
// ignore: constant_identifier_names
enum Condition { AND, OR }

@MappableEnum()
enum Order { asc, desc }

sealed class OrderOptions {
  final Map<String, Order> _order;

  OrderOptions({required Map<String, Order> order}) : _order = order;

  Map<String, String> toQueries() =>
      Map.fromEntries(_order.entries.map((e) => MapEntry("order[${e.key}]", e.value.name)));
}

class AuthorOrderOptions extends OrderOptions {
  AuthorOrderOptions() : super(order: {});

  AuthorOrderOptions name(Order order) {
    _order["name"] = order;
    return this;
  }
}

class ChapterOrderOptions extends OrderOptions {
  ChapterOrderOptions() : super(order: {});

  ChapterOrderOptions createdAt(Order order) {
    _order["createdAt"] = order;
    return this;
  }

  ChapterOrderOptions updatedAt(Order order) {
    _order["updatedAt"] = order;
    return this;
  }

  ChapterOrderOptions publishAt(Order order) {
    _order["publishAt"] = order;
    return this;
  }

  ChapterOrderOptions readableAt(Order order) {
    _order["readableAt"] = order;
    return this;
  }

  ChapterOrderOptions volume(Order order) {
    _order["volume"] = order;
    return this;
  }

  ChapterOrderOptions chapter(Order order) {
    _order["chapter"] = order;
    return this;
  }
}

class CoverArtOrderOptions extends OrderOptions {
  CoverArtOrderOptions() : super(order: {});

  CoverArtOrderOptions createdAt(Order order) {
    _order["createdAt"] = order;
    return this;
  }

  CoverArtOrderOptions updatedAt(Order order) {
    _order["updatedAt"] = order;
    return this;
  }

  CoverArtOrderOptions volume(Order order) {
    _order["volume"] = order;
    return this;
  }
}

class MangaOrderOptions extends OrderOptions {
  MangaOrderOptions() : super(order: {});

  MangaOrderOptions title(Order order) {
    _order["title"] = order;
    return this;
  }

  MangaOrderOptions year(Order order) {
    _order["year"] = order;
    return this;
  }

  MangaOrderOptions createdAt(Order order) {
    _order["createdAt"] = order;
    return this;
  }

  MangaOrderOptions updatedAt(Order order) {
    _order["updatedAt"] = order;
    return this;
  }

  MangaOrderOptions latestUploadedChapter(Order order) {
    _order["latestUploadedChapter"] = order;
    return this;
  }

  MangaOrderOptions followedCount(Order order) {
    _order["followedCount"] = order;
    return this;
  }

  MangaOrderOptions relevance(Order order) {
    _order["relevance"] = order;
    return this;
  }
}

class ScanlationGroupOrderOptions extends OrderOptions {
  ScanlationGroupOrderOptions() : super(order: {});

  ScanlationGroupOrderOptions name(Order order) {
    _order["name"] = order;
    return this;
  }

  ScanlationGroupOrderOptions createdAt(Order order) {
    _order["createdAt"] = order;
    return this;
  }

  ScanlationGroupOrderOptions updatedAt(Order order) {
    _order["updatedAt"] = order;
    return this;
  }

  ScanlationGroupOrderOptions followedCount(Order order) {
    _order["followedCount"] = order;
    return this;
  }

  ScanlationGroupOrderOptions relevance(Order order) {
    _order["relevance"] = order;
    return this;
  }
}

sealed class IncludesOptions {
  final Set<RelationshipType> _includes;

  IncludesOptions({required Set<RelationshipType> includes}) : _includes = includes;

  Map<String, List<String>> toQueries() => {"includes[]": _includes.map((e) => e.name).toList()};
}

class AuthorIncludesOptions extends IncludesOptions {
  AuthorIncludesOptions() : super(includes: {});

  AuthorIncludesOptions manga() {
    _includes.add(RelationshipType.manga);
    return this;
  }
}

class ChapterIncludesOptions extends IncludesOptions {
  ChapterIncludesOptions() : super(includes: {});

  ChapterIncludesOptions manga() {
    _includes.add(RelationshipType.manga);
    return this;
  }

  ChapterIncludesOptions scanlationGroup() {
    _includes.add(RelationshipType.scanlation_group);
    return this;
  }

  ChapterIncludesOptions user() {
    _includes.add(RelationshipType.user);
    return this;
  }
}

class CoverArtIncludesOptions extends IncludesOptions {
  CoverArtIncludesOptions() : super(includes: {});

  CoverArtIncludesOptions manga() {
    _includes.add(RelationshipType.manga);
    return this;
  }

  CoverArtIncludesOptions user() {
    _includes.add(RelationshipType.user);
    return this;
  }
}

class MangaIncludesOptions extends IncludesOptions {
  MangaIncludesOptions() : super(includes: {});

  MangaIncludesOptions manga() {
    _includes.add(RelationshipType.manga);
    return this;
  }

  MangaIncludesOptions coverArt() {
    _includes.add(RelationshipType.cover_art);
    return this;
  }

  MangaIncludesOptions author() {
    _includes.add(RelationshipType.author);
    return this;
  }

  MangaIncludesOptions artist() {
    _includes.add(RelationshipType.artist);
    return this;
  }

  MangaIncludesOptions tag() {
    _includes.add(RelationshipType.tag);
    return this;
  }

  MangaIncludesOptions creator() {
    _includes.add(RelationshipType.creator);
    return this;
  }
}

class MangaRelationIncludesOptions extends IncludesOptions {
  MangaRelationIncludesOptions() : super(includes: {});

  MangaRelationIncludesOptions manga() {
    _includes.add(RelationshipType.manga);
    return this;
  }
}

class ScanlationGroupIncludesOptions extends IncludesOptions {
  ScanlationGroupIncludesOptions() : super(includes: {});

  ScanlationGroupIncludesOptions leader() {
    _includes.add(RelationshipType.leader);
    return this;
  }

  ScanlationGroupIncludesOptions member() {
    _includes.add(RelationshipType.member);
    return this;
  }
}
