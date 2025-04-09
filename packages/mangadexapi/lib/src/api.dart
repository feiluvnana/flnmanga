import 'package:http/http.dart' as http;
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/model/enum.dart';
import 'package:mangadexapi/src/model/request.dart';
import 'package:mangadexapi/src/model/response.dart';
import 'package:uuid/uuid.dart';

class MangadexApi {
  static const String _baseUrl = "https://api.mangadex.org";
  static final http.Client _client = http.Client();

  static bool _isValidUuid(String uuid) {
    try {
      UuidValue.fromString(uuid);
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<CollectionResponse<Author>> getAuthors({
    int? limit,
    int? offset,
    List<UuidValue>? ids,
    String? name,
    AuthorOrderOptions? order,
    List<EntityType>? includes,
  }) async {
    final uri = Uri.parse("$_baseUrl/author").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (name != null) "name": name,
        if (order != null) ...order.toQueries(),
        if (includes != null) "includes[]": includes.map((e) => e.name).toList(),
      },
    );
    final response = await _client.get(uri);
    if (response.statusCode ~/ 100 == 2) {
      final data = CollectionResponseMapper.fromJson<Author>(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  static Future<EntityResponse<Author>> getAuthorById(UuidValue id, {List<EntityType>? includes}) async {
    if (!_isValidUuid(id.toString())) {
      throw FormatException('Invalid UUID format: ${id.toString()}');
    }
    final uri = Uri.parse(
      "$_baseUrl/author/$id",
    ).replace(queryParameters: {if (includes != null) "includes[]": includes.map((e) => e.name).toList()});
    final response = await _client.get(uri);
    if (response.statusCode ~/ 100 == 2) {
      final data = EntityResponseMapper.fromJson<Author>(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  static Future<CollectionResponse<Chapter>> getChapters({
    int? limit,
    int? offset,
    List<UuidValue>? ids,
    String? title,
    List<UuidValue>? groups,
    UuidValue? uploader,
    UuidValue? manga,
    List<String>? volume,
    String? chapter,
    List<String>? translatedLanguage,
    List<String>? originalLanguage,
    List<String>? excludedOriginalLanguage,
    List<ContentRating>? contentRating,
    List<UuidValue>? excludedGroups,
    List<UuidValue>? excludedUploaders,
    bool? includeFutureUpdates,
    bool? includeEmptyPages,
    bool? includeFuturePublishAt,
    bool? includeExternalUrl,
    DateTime? createdAtSince,
    DateTime? updatedAtSince,
    DateTime? publishAtSince,
    ChapterOrderOptions? order,
    List<EntityType>? includes,
  }) async {
    final uri = Uri.parse("$_baseUrl/chapter").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (title != null) "title": title,
        if (groups != null) "groups[]": groups.map((e) => e.toString()).toList(),
        if (uploader != null) "uploader": uploader.toString(),
        if (manga != null) "manga": manga.toString(),
        if (volume != null) "volume[]": volume,
        if (chapter != null) "chapter": chapter,
        if (translatedLanguage != null) "translatedLanguage[]": translatedLanguage,
        if (originalLanguage != null) "originalLanguage[]": originalLanguage,
        if (excludedOriginalLanguage != null) "excludedOriginalLanguage[]": excludedOriginalLanguage,
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (excludedGroups != null) "excludedGroups[]": excludedGroups.map((e) => e.toString()).toList(),
        if (excludedUploaders != null) "excludedUploaders[]": excludedUploaders.map((e) => e.toString()).toList(),
        if (includeFutureUpdates != null) "includeFutureUpdates": includeFutureUpdates ? 1 : 0,
        if (includeEmptyPages != null) "includeEmptyPages": includeEmptyPages ? 1 : 0,
        if (includeFuturePublishAt != null) "includeFuturePublishAt": includeFuturePublishAt ? 1 : 0,
        if (includeExternalUrl != null) "includeExternalUrl": includeExternalUrl ? 1 : 0,
        if (createdAtSince != null) "createdAtSince": createdAtSince.toIso8601String(),
        if (updatedAtSince != null) "updatedAtSince": updatedAtSince.toIso8601String(),
        if (publishAtSince != null) "publishAtSince": publishAtSince.toIso8601String(),
        if (order != null) ...order.toQueries(),
        if (includes != null) "includes[]": includes.map((e) => e.name).toList(),
      },
    );
    final response = await _client.get(uri);
    if (response.statusCode ~/ 100 == 2) {
      final data = CollectionResponseMapper.fromJson<Chapter>(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  static Future<EntityResponse<Chapter>> getChapterById(UuidValue id, {List<EntityType>? includes}) async {
    if (!_isValidUuid(id.toString())) {
      throw FormatException('Invalid UUID format: ${id.toString()}');
    }
    final uri = Uri.parse(
      "$_baseUrl/chapter/$id",
    ).replace(queryParameters: {if (includes != null) "includes[]": includes.map((e) => e.name).toList()});
    final response = await _client.get(uri);
    if (response.statusCode ~/ 100 == 2) {
      final data = EntityResponseMapper.fromJson<Chapter>(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  // static Future<EntityResponse<Manga>> getMangaRandomly() async {
  //   final response = await _client.get(Uri.parse("$_baseUrl/manga/random"));
  //   if (response.statusCode ~/ 100 == 2) {
  //     final data = EntityResponseMapper.fromJson<Manga>(response.body);
  //     return data;
  //   } else {
  //     final error = ErrorResponseMapper.fromJson(response.body);
  //     throw error;
  //   }
  // }

  // static Future<CollectionResponse<Tag>> getMangaTags() async {
  //   final response = await _client.get(Uri.parse("$_baseUrl/manga/tag"));
  //   if (response.statusCode ~/ 100 == 2) {
  //     final data = CollectionResponseMapper.fromJson<Tag>(response.body);
  //     return data;
  //   } else {
  //     final error = ErrorResponseMapper.fromJson(response.body);
  //     throw error;
  //   }
  // }
}
