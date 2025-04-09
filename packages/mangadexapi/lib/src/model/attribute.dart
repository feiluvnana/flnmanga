import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/model/enum.dart';
import 'package:mangadexapi/src/util.dart';
import 'package:uuid/uuid_value.dart';

part 'attribute.mapper.dart';

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

@MappableClass(includeCustomMappers: [UuidValueMapper()])
class ChapterAttributes with ChapterAttributesMappable {
  final String? title;
  final String? volume;
  final String? chapter;
  final int pages;
  final String translatedLanguage;
  final UuidValue? uploader;
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

@MappableClass(includeCustomMappers: [UuidValueMapper()])
class MangaAttributes with MangaAttributesMappable {
  final Map<String, String> title;
  final List<Map<String, String>> altTitles;
  final Map<String, String> description;
  final bool isLocked;
  final Map<String, String>? links;
  final String originalLanguage;
  final String? lastVolume;
  final String? lastChapter;
  final PublicationDemographic? publicationDemographic;
  final Status status;
  final int? year;
  final ContentRating contentRating;
  final bool chapterNumbersResetOnNewVolume;
  final List<String?> availableTranslatedLanguages;
  final UuidValue? latestUploadedChapter;
  final List<Tag> tags;
  final State state;
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
enum TagGroup { content, format, genre, theme }

@MappableClass()
class TagAttributes with TagAttributesMappable {
  final Map<String, String> name;
  // final dynamic description; this field is acting funny
  final TagGroup group;
  final int version;

  const TagAttributes({required this.name, required this.group, required this.version});
}
