import 'dart:convert';

import 'package:http/http.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/models/enums.dart';
import 'package:mangadexapi/src/models/responses.dart';
import 'package:mangadexapi/src/utils/cache.dart';

class MangadexApi {
  final Client _client;
  final Cache _cache;
  final String _baseUrl;

  MangadexApi({Client? client, Cache? cache, String baseUrl = "https://api.mangadex.org"})
    : _client = client ?? Client(),
      _cache = cache ?? InMemoryCache(ttl: const Duration(hours: 1)),
      _baseUrl = baseUrl;

  Future<T> _get<T>(Uri uri, T Function(String) fromJson) async {
    final cached = await _cache.get(uri.toString());
    if (cached != null) {
      return fromJson(cached);
    }

    final response = await _client.get(uri);
    if (response.statusCode ~/ 100 == 2) {
      _cache.set(uri.toString(), response.body).ignore();
      final data = fromJson(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  Future<void> wipeCache() async {
    await _cache.wipe();
  }

  Future<CollectionResponse<Author>> getAuthors({
    int? limit,
    int? offset,
    List<Uuid>? ids,
    String? name,
    AuthorOrderOptions? order,
    AuthorIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");
    assert(ids == null || ids.length <= 100, "`ids` can't have more than 100 elements.");

    final uri = Uri.parse("$_baseUrl/author").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (name != null) "name": name,
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<Author>>(uri, CollectionResponseMapper.fromJson<Author>);
  }

  Future<EntityResponse<Author>> getAuthorById(Uuid id, {AuthorIncludesOptions? includes}) async {
    final uri = Uri.parse("$_baseUrl/author/$id").replace(queryParameters: includes?.toQueries());
    return _get<EntityResponse<Author>>(uri, EntityResponseMapper.fromJson<Author>);
  }

  Future<CollectionResponse<Chapter>> getChapters({
    int? limit,
    int? offset,
    List<Uuid>? ids,
    String? title,
    List<Uuid>? groups,
    List<Uuid>? uploader,
    Uuid? manga,
    List<String>? volume,
    List<String>? chapter,
    List<String>? translatedLanguage,
    List<String>? originalLanguage,
    List<String>? excludedOriginalLanguage,
    List<MangaContentRating>? contentRating,
    List<Uuid>? excludedGroups,
    List<Uuid>? excludedUploaders,
    bool? includeFutureUpdates,
    bool? includeEmptyPages,
    bool? includeFuturePublishAt,
    bool? includeExternalUrl,
    DateTime? createdAtSince,
    DateTime? updatedAtSince,
    DateTime? publishAtSince,
    ChapterOrderOptions? order,
    ChapterIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");
    assert(ids == null || ids.length <= 100, "`ids` can't have more than 100 elements.");

    final uri = Uri.parse("$_baseUrl/chapter").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (title != null) "title": title,
        if (groups != null) "groups[]": groups.map((e) => e.toString()).toList(),
        if (uploader != null) "uploader": uploader.map((e) => e.toString()).toList(),
        if (manga != null) "manga": manga.toString(),
        if (volume != null) "volume[]": volume,
        if (chapter != null) "chapter": chapter,
        if (translatedLanguage != null) "translatedLanguage[]": translatedLanguage,
        if (originalLanguage != null) "originalLanguage[]": originalLanguage,
        if (excludedOriginalLanguage != null) "excludedOriginalLanguage[]": excludedOriginalLanguage,
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (excludedGroups != null) "excludedGroups[]": excludedGroups.map((e) => e.toString()).toList(),
        if (excludedUploaders != null) "excludedUploaders[]": excludedUploaders.map((e) => e.toString()).toList(),
        if (includeFutureUpdates != null) "includeFutureUpdates": includeFutureUpdates ? "1" : "0",
        if (includeEmptyPages != null) "includeEmptyPages": includeEmptyPages ? 1 : 0,
        if (includeFuturePublishAt != null) "includeFuturePublishAt": includeFuturePublishAt ? 1 : 0,
        if (includeExternalUrl != null) "includeExternalUrl": includeExternalUrl ? 1 : 0,
        if (createdAtSince != null) "createdAtSince": createdAtSince.toIso8601String(),
        if (updatedAtSince != null) "updatedAtSince": updatedAtSince.toIso8601String(),
        if (publishAtSince != null) "publishAtSince": publishAtSince.toIso8601String(),
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<Chapter>>(uri, CollectionResponseMapper.fromJson<Chapter>);
  }

  Future<EntityResponse<Chapter>> getChapterById(Uuid id, {ChapterIncludesOptions? includes}) async {
    final uri = Uri.parse("$_baseUrl/chapter/$id").replace(queryParameters: includes?.toQueries());
    return _get<EntityResponse<Chapter>>(uri, EntityResponseMapper.fromJson<Chapter>);
  }

  Future<CollectionResponse<CoverArt>> getCoverArts({
    int? limit,
    int? offset,
    List<Uuid>? manga,
    List<Uuid>? ids,
    List<Uuid>? uploaders,
    List<String>? locales,
    CoverArtOrderOptions? order,
    CoverArtIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");
    assert(manga == null || manga.length <= 100, "`manga` can't have more than 100 elements.");
    assert(ids == null || ids.length <= 100, "`ids` can't have more than 100 elements.");
    assert(uploaders == null || uploaders.length <= 100, "`uploaders` can't have more than 100 elements.");
    assert(locales == null || locales.length <= 100, "`locales` can't have more than 100 elements.");

    final uri = Uri.parse("$_baseUrl/cover").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (manga != null) "manga[]": manga.map((e) => e.toString()).toList(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (uploaders != null) "uploaders[]": uploaders.map((e) => e.toString()).toList(),
        if (locales != null) "locales[]": locales,
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<CoverArt>>(uri, CollectionResponseMapper.fromJson<CoverArt>);
  }

  Future<EntityResponse<CoverArt>> getCoverArtByMangaOrCoverId(Uuid id, {CoverArtIncludesOptions? includes}) async {
    final uri = Uri.parse("$_baseUrl/cover/$id").replace(queryParameters: includes?.toQueries());
    return _get<EntityResponse<CoverArt>>(uri, EntityResponseMapper.fromJson<CoverArt>);
  }

  Future<CollectionResponse<CustomList>> getCustomListById(Uuid id) async {
    final uri = Uri.parse("$_baseUrl/list/$id");
    return _get<CollectionResponse<CustomList>>(uri, CollectionResponseMapper.fromJson<CustomList>);
  }

  Future<CollectionResponse<CustomList>> getCustomListsByUserId(Uuid id, {int? limit, int? offset}) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");

    final uri = Uri.parse("$_baseUrl/user/$id/list").replace(
      queryParameters: {if (limit != null) "limit": limit.toString(), if (offset != null) "offset": offset.toString()},
    );
    return _get<CollectionResponse<CustomList>>(uri, CollectionResponseMapper.fromJson<CustomList>);
  }

  Future<CollectionResponse<Chapter>> getFeedByCustomListId(
    Uuid id, {
    int? limit,
    int? offset,
    List<String>? translatedLanguage,
    List<String>? originalLanguage,
    List<String>? excludedOriginalLanguage,
    List<MangaContentRating>? contentRating,
    List<Uuid>? excludedGroups,
    List<Uuid>? excludedUploaders,
    bool? includeFutureUpdates,
    bool? includeEmptyPages,
    bool? includeFuturePublishAt,
    bool? includeExternalUrl,
    DateTime? createdAtSince,
    DateTime? updatedAtSince,
    DateTime? publishAtSince,
    ChapterOrderOptions? order,
    ChapterIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");

    final uri = Uri.parse("$_baseUrl/list/$id/feed").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (translatedLanguage != null) "translatedLanguage[]": translatedLanguage,
        if (originalLanguage != null) "originalLanguage[]": originalLanguage,
        if (excludedOriginalLanguage != null) "excludedOriginalLanguage[]": excludedOriginalLanguage,
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (excludedGroups != null) "excludedGroups[]": excludedGroups.map((e) => e.toString()).toList(),
        if (excludedUploaders != null) "excludedUploaders[]": excludedUploaders.map((e) => e.toString()).toList(),
        if (includeFutureUpdates != null) "includeFutureUpdates": includeFutureUpdates ? "1" : "0",
        if (includeEmptyPages != null) "includeEmptyPages": includeEmptyPages ? 1 : 0,
        if (includeFuturePublishAt != null) "includeFuturePublishAt": includeFuturePublishAt ? 1 : 0,
        if (includeExternalUrl != null) "includeExternalUrl": includeExternalUrl ? 1 : 0,
        if (createdAtSince != null) "createdAtSince": createdAtSince.toIso8601String(),
        if (updatedAtSince != null) "updatedAtSince": updatedAtSince.toIso8601String(),
        if (publishAtSince != null) "publishAtSince": publishAtSince.toIso8601String(),
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<Chapter>>(uri, CollectionResponseMapper.fromJson<Chapter>);
  }

  Future<String> ping() async {
    final uri = Uri.parse("$_baseUrl/ping");
    return _get<String>(uri, (data) => data);
  }

  Future<CollectionResponse<MappingId>> postLegacyIdMapping({required LegacyType type, required List<int> ids}) async {
    final uri = Uri.parse("$_baseUrl/legacy/mapping");

    final response = await _client.post(
      uri,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"type": type.name, "ids": ids}),
    );
    if (response.statusCode ~/ 100 == 2) {
      final data = CollectionResponseMapper.fromJson<MappingId>(response.body);
      return data;
    } else {
      final error = ErrorResponseMapper.fromJson(response.body);
      throw error;
    }
  }

  Future<CollectionResponse<Manga>> getMangas({
    int? limit,
    int? offset,
    String? title,
    Uuid? authorOrArtist,
    List<Uuid>? authors,
    List<Uuid>? artists,
    int? year,
    List<Uuid>? includedTags,
    Condition? includedTagsMode,
    List<Uuid>? excludedTags,
    Condition? excludedTagsMode,
    List<MangaStatus>? status,
    List<String>? originalLanguage,
    List<String>? excludedOriginalLanguage,
    List<String>? availableTranslatedLanguage,
    List<MangaPublicationDemographic>? publicationDemographic,
    List<Uuid>? ids,
    List<MangaContentRating>? contentRating,
    DateTime? createdAtSince,
    DateTime? updatedAtSince,
    MangaOrderOptions? order,
    MangaIncludesOptions? includes,
    bool? hasAvailableChapters,
    Uuid? group,
  }) {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");
    assert(ids == null || ids.length <= 100, "`ids` can't have more than 100 elements.");

    final uri = Uri.parse("$_baseUrl/manga").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (title != null) "title": title,
        if (authorOrArtist != null) "authorOrArtist": authorOrArtist.toString(),
        if (authors != null) "authors[]": authors.map((e) => e.toString()).toList(),
        if (artists != null) "artists[]": artists.map((e) => e.toString()).toList(),
        if (year != null) "year": year.toString(),
        if (includedTags != null) "includedTags[]": includedTags.map((e) => e.toString()).toList(),
        if (includedTagsMode != null) "includedTagsMode": includedTagsMode.name,
        if (excludedTags != null) "excludedTags[]": excludedTags.map((e) => e.toString()).toList(),
        if (excludedTagsMode != null) "excludedTagsMode": excludedTagsMode.name,
        if (status != null) "status[]": status.map((e) => e.name).toList(),
        if (originalLanguage != null) "originalLanguage[]": originalLanguage,
        if (excludedOriginalLanguage != null) "excludedOriginalLanguage[]": excludedOriginalLanguage,
        if (availableTranslatedLanguage != null) "availableTranslatedLanguage[]": availableTranslatedLanguage,
        if (publicationDemographic != null)
          "publicationDemographic[]": publicationDemographic.map((e) => e.name).toList(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (createdAtSince != null) "createdAtSince": createdAtSince.toIso8601String(),
        if (updatedAtSince != null) "updatedAtSince": updatedAtSince.toIso8601String(),
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
        if (hasAvailableChapters != null) "hasAvailableChapters": hasAvailableChapters ? 1 : 0,
        if (group != null) "group": group.toString(),
      },
    );
    return _get<CollectionResponse<Manga>>(uri, CollectionResponseMapper.fromJson<Manga>);
  }

  Future<EntityResponse<Manga>> getMangaById(Uuid id, {MangaIncludesOptions? includes}) async {
    final uri = Uri.parse("$_baseUrl/manga/$id").replace(queryParameters: includes?.toQueries());
    return _get<EntityResponse<Manga>>(uri, EntityResponseMapper.fromJson<Manga>);
  }

  Future<CollectionResponse<Chapter>> getFeedByMangaId(
    Uuid id, {
    int? limit,
    int? offset,
    List<String>? translatedLanguage,
    List<String>? originalLanguage,
    List<String>? excludedOriginalLanguage,
    List<MangaContentRating>? contentRating,
    List<Uuid>? excludedGroups,
    List<Uuid>? excludedUploaders,
    bool? includeFutureUpdates,
    bool? includeEmptyPages,
    bool? includeFuturePublishAt,
    bool? includeExternalUrl,
    DateTime? createdAtSince,
    DateTime? updatedAtSince,
    DateTime? publishAtSince,
    ChapterOrderOptions? order,
    ChapterIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");

    final uri = Uri.parse("$_baseUrl/manga/$id/feed").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (translatedLanguage != null) "translatedLanguage[]": translatedLanguage,
        if (originalLanguage != null) "originalLanguage[]": originalLanguage,
        if (excludedOriginalLanguage != null) "excludedOriginalLanguage[]": excludedOriginalLanguage,
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (excludedGroups != null) "excludedGroups[]": excludedGroups.map((e) => e.toString()).toList(),
        if (excludedUploaders != null) "excludedUploaders[]": excludedUploaders.map((e) => e.toString()).toList(),
        if (includeFutureUpdates != null) "includeFutureUpdates": includeFutureUpdates ? "1" : "0",
        if (includeEmptyPages != null) "includeEmptyPages": includeEmptyPages ? 1 : 0,
        if (includeFuturePublishAt != null) "includeFuturePublishAt": includeFuturePublishAt ? 1 : 0,
        if (includeExternalUrl != null) "includeExternalUrl": includeExternalUrl ? 1 : 0,
        if (createdAtSince != null) "createdAtSince": createdAtSince.toIso8601String(),
        if (updatedAtSince != null) "updatedAtSince": updatedAtSince.toIso8601String(),
        if (publishAtSince != null) "publishAtSince": publishAtSince.toIso8601String(),
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<Chapter>>(uri, CollectionResponseMapper.fromJson<Chapter>);
  }

  Future<EntityResponse<Manga>> getMangaRandomly({
    MangaIncludesOptions? includes,
    List<MangaContentRating>? contentRating,
    List<Uuid>? includedTags,
    Condition? includedTagsMode,
    List<Uuid>? excludedTags,
    Condition? excludedTagsMode,
  }) async {
    final uri = Uri.parse("$_baseUrl/manga/random").replace(
      queryParameters: {
        if (includes != null) ...includes.toQueries(),
        if (contentRating != null) "contentRating[]": contentRating.map((e) => e.name).toList(),
        if (includedTags != null) "includedTags[]": includedTags.map((e) => e.toString()).toList(),
        if (includedTagsMode != null) "includedTagsMode": includedTagsMode.name,
        if (excludedTags != null) "excludedTags[]": excludedTags.map((e) => e.toString()).toList(),
        if (excludedTagsMode != null) "excludedTagsMode": excludedTagsMode.name,
      },
    );
    return _get<EntityResponse<Manga>>(uri, EntityResponseMapper.fromJson<Manga>);
  }

  Future<CollectionResponse<Tag>> getTags() async {
    final uri = Uri.parse("$_baseUrl/manga/tag");

    return _get<CollectionResponse<Tag>>(uri, CollectionResponseMapper.fromJson<Tag>);
  }

  Future<CollectionResponse<MangaRelation>> getRelationsByMangaId(
    Uuid id, {
    MangaRelationIncludesOptions? includes,
  }) async {
    final uri = Uri.parse("$_baseUrl/manga/$id/relation").replace(queryParameters: includes?.toQueries());
    return _get<CollectionResponse<MangaRelation>>(uri, CollectionResponseMapper.fromJson<MangaRelation>);
  }

  Future<CollectionResponse<ScanlationGroup>> getScanlationGroups({
    int? limit,
    int? offset,
    List<Uuid>? ids,
    String? name,
    String? focusedLanguage,
    ScanlationGroupOrderOptions? order,
    ScanlationGroupIncludesOptions? includes,
  }) async {
    assert(limit == null || (limit >= 1 && limit <= 100), "`limit` must be between 1 and 100.");
    assert(offset == null || offset >= 0, "`offset` must be greater than or equal to 0.");
    assert(ids == null || ids.length <= 100, "`ids` can't have more than 100 elements.");

    final uri = Uri.parse("$_baseUrl/scanlation-group").replace(
      queryParameters: {
        if (limit != null) "limit": limit.toString(),
        if (offset != null) "offset": offset.toString(),
        if (ids != null) "ids[]": ids.map((e) => e.toString()).toList(),
        if (name != null) "name": name,
        if (focusedLanguage != null) "focusedLanguage": focusedLanguage,
        if (order != null) ...order.toQueries(),
        if (includes != null) ...includes.toQueries(),
      },
    );
    return _get<CollectionResponse<ScanlationGroup>>(uri, CollectionResponseMapper.fromJson<ScanlationGroup>);
  }

  Future<EntityResponse<ScanlationGroup>> getScanlationGroupById(
    Uuid id, {
    ScanlationGroupIncludesOptions? includes,
  }) async {
    final uri = Uri.parse("$_baseUrl/scanlation-group/$id").replace(queryParameters: includes?.toQueries());
    return _get<EntityResponse<ScanlationGroup>>(uri, EntityResponseMapper.fromJson<ScanlationGroup>);
  }

  Future<EntityResponse<User>> getUserById(Uuid id) async {
    final uri = Uri.parse("$_baseUrl/user/$id");
    return _get<EntityResponse<User>>(uri, EntityResponseMapper.fromJson<User>);
  }
}
