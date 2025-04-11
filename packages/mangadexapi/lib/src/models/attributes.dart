import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/models/enums.dart';

part 'attributes.mapper.dart';

@MappableClass()
class ApiClientAttributes with ApiClientAttributesMappable {
  final String name;
  final String? description;
  final String? profile;
  final String externalClientId;
  final bool isActive;
  final ApiClientState state;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int version;

  const ApiClientAttributes({
    required this.name,
    this.description,
    this.profile,
    required this.externalClientId,
    required this.isActive,
    required this.state,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
  });
}

@MappableClass()
class AuthorAttributes with AuthorAttributesMappable {
  final String name;
  final String? imageUrl;
  final Map<String, String> biography;
  final String? twitter;
  final String? pixiv;
  final String? melonBook;
  final String? fanBox;
  final String? booth;
  final String? nicoVideo;
  final String? skeb;
  final String? fantia;
  final String? tumblr;
  final String? youtube;
  final String? weibo;
  final String? naver;
  final String? namicomi;
  final String? website;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  const AuthorAttributes({
    required this.name,
    this.imageUrl,
    required this.biography,
    this.twitter,
    this.pixiv,
    this.melonBook,
    this.fanBox,
    this.booth,
    this.nicoVideo,
    this.skeb,
    this.fantia,
    this.tumblr,
    this.youtube,
    this.weibo,
    this.naver,
    this.namicomi,
    this.website,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });
}

@MappableClass(includeCustomMappers: [UuidMapper()])
class ChapterAttributes with ChapterAttributesMappable {
  final String? title;
  final String? volume;
  final String? chapter;
  final int pages;
  final String translatedLanguage;
  final Uuid? uploader;
  final String? externalUrl;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishAt;
  final DateTime readableAt;

  const ChapterAttributes({
    required this.title,
    this.volume,
    this.chapter,
    required this.pages,
    required this.translatedLanguage,
    this.uploader,
    this.externalUrl,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
    required this.publishAt,
    required this.readableAt,
  });
}

@MappableClass()
class CoverArtAttributes with CoverArtAttributesMappable {
  final String? volume;
  final String fileName;
  final String? description;
  final String? locale;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CoverArtAttributes({
    this.volume,
    required this.fileName,
    this.description,
    this.locale,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });
}

@MappableClass()
class CustomListAttributes with CustomListAttributesMappable {
  final String name;
  final CustomListVisibility visibility;
  final int version;

  CustomListAttributes({required this.name, required this.visibility, required this.version});
}

@MappableClass()
class MappingIdAttributes with MappingIdAttributesMappable {
  final LegacyType type;
  final int legacyId;
  final Uuid newId;

  const MappingIdAttributes({required this.type, required this.legacyId, required this.newId});
}

@MappableClass(includeCustomMappers: [UuidMapper()])
class MangaAttributes with MangaAttributesMappable {
  final Map<String, String> title;
  final List<Map<String, String>> altTitles;
  final Map<String, String> description;
  final bool isLocked;
  final Map<String, String>? links;
  final String originalLanguage;
  final String? lastVolume;
  final String? lastChapter;
  final MangaPublicationDemographic? publicationDemographic;
  final MangaStatus status;
  final int? year;
  final MangaContentRating contentRating;
  final bool chapterNumbersResetOnNewVolume;
  final List<String?> availableTranslatedLanguages;
  final Uuid? latestUploadedChapter;
  final List<Tag> tags;
  final MangaState state;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  const MangaAttributes({
    required this.title,
    required this.altTitles,
    required this.description,
    required this.isLocked,
    this.links,
    required this.originalLanguage,
    this.lastVolume,
    this.lastChapter,
    this.publicationDemographic,
    required this.status,
    this.year,
    required this.contentRating,
    required this.chapterNumbersResetOnNewVolume,
    required this.availableTranslatedLanguages,
    this.latestUploadedChapter,
    required this.tags,
    required this.state,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });
}

@MappableEnum()
enum MangaRelated {
  monochrome,
  // ignore: constant_identifier_names
  main_story,
  // ignore: constant_identifier_names
  adapted_from,
  // ignore: constant_identifier_names
  based_on,
  prequel,
  // ignore: constant_identifier_names
  side_story,
  doujinshi,
  // ignore: constant_identifier_names
  same_franchise,
  // ignore: constant_identifier_names
  shared_universe,
  sequel,
  // ignore: constant_identifier_names
  spin_off,
  // ignore: constant_identifier_names
  alternate_story,
  // ignore: constant_identifier_names
  alternate_version,
  preserialization,
  colored,
  serialization,
}

@MappableClass()
class MangaRelationAttributes with MangaRelationAttributesMappable {
  final MangaRelated type;
  final int version;

  const MangaRelationAttributes({required this.type, required this.version});
}

@MappableClass()
class ScanlationGroupAttributes with ScanlationGroupAttributesMappable {
  final String name;
  final List<Map<String, String>> altNames;
  final String? website;
  final String? ircServer;
  final String? ircChannel;
  final String? discord;
  final String? contactEmail;
  final String? description;
  final String? twitter;
  final String? mangaUpdates;
  final String? focusedLanguage;
  final bool locked;
  final bool official;
  final bool verified;
  final bool inactive;
  final bool? exLicensed;
  final String? publishDelay;
  final int version;
  final DateTime createdAt;
  final DateTime updatedAt;

  const ScanlationGroupAttributes({
    required this.name,
    required this.altNames,
    this.website,
    this.ircServer,
    this.ircChannel,
    this.discord,
    this.contactEmail,
    this.description,
    this.twitter,
    this.mangaUpdates,
    this.focusedLanguage,
    required this.locked,
    required this.official,
    required this.verified,
    required this.inactive,
    this.exLicensed,
    this.publishDelay,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });
}

@MappableEnum()
enum TagGroup { content, format, genre, theme }

@MappableClass()
class TagAttributes with TagAttributesMappable {
  final Map<String, String> name;
  // final dynamic description; this field is acting funny
  final TagGroup group;
  final int version;

  const TagAttributes({required this.name, required this.group, required this.version});
}

@MappableClass()
class UserAttributes with UserAttributesMappable {
  final String username;
  final List<String> roles;
  final int version;

  const UserAttributes({required this.username, required this.roles, required this.version});
}

@MappableEnum()
// ignore: constant_identifier_names
enum ReasonCategory { manga, chapter, scanlation_group, user, author }

@MappableClass()
class ReasonAttributes with ReasonAttributesMappable {
  final Map<String, String> reason;
  final bool detailsRequired;
  final ReasonCategory category;
  final int version;

  const ReasonAttributes({
    required this.reason,
    required this.detailsRequired,
    required this.category,
    required this.version,
  });
}
