// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attribute.dart';

class TagGroupMapper extends EnumMapper<TagGroup> {
  TagGroupMapper._();

  static TagGroupMapper? _instance;
  static TagGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagGroupMapper._());
    }
    return _instance!;
  }

  static TagGroup fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TagGroup decode(dynamic value) {
    switch (value) {
      case r'content':
        return TagGroup.content;
      case r'format':
        return TagGroup.format;
      case r'genre':
        return TagGroup.genre;
      case r'theme':
        return TagGroup.theme;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TagGroup self) {
    switch (self) {
      case TagGroup.content:
        return r'content';
      case TagGroup.format:
        return r'format';
      case TagGroup.genre:
        return r'genre';
      case TagGroup.theme:
        return r'theme';
    }
  }
}

extension TagGroupMapperExtension on TagGroup {
  String toValue() {
    TagGroupMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TagGroup>(this) as String;
  }
}

class AuthorAttributesMapper extends ClassMapperBase<AuthorAttributes> {
  AuthorAttributesMapper._();

  static AuthorAttributesMapper? _instance;
  static AuthorAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthorAttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AuthorAttributes';

  static String _$name(AuthorAttributes v) => v.name;
  static const Field<AuthorAttributes, String> _f$name = Field('name', _$name);
  static String? _$imageUrl(AuthorAttributes v) => v.imageUrl;
  static const Field<AuthorAttributes, String> _f$imageUrl =
      Field('imageUrl', _$imageUrl, opt: true);
  static Map<String, String> _$biography(AuthorAttributes v) => v.biography;
  static const Field<AuthorAttributes, Map<String, String>> _f$biography =
      Field('biography', _$biography);
  static String? _$twitter(AuthorAttributes v) => v.twitter;
  static const Field<AuthorAttributes, String> _f$twitter =
      Field('twitter', _$twitter, opt: true);
  static String? _$pixiv(AuthorAttributes v) => v.pixiv;
  static const Field<AuthorAttributes, String> _f$pixiv =
      Field('pixiv', _$pixiv, opt: true);
  static String? _$melonBook(AuthorAttributes v) => v.melonBook;
  static const Field<AuthorAttributes, String> _f$melonBook =
      Field('melonBook', _$melonBook, opt: true);
  static String? _$fanBox(AuthorAttributes v) => v.fanBox;
  static const Field<AuthorAttributes, String> _f$fanBox =
      Field('fanBox', _$fanBox, opt: true);
  static String? _$booth(AuthorAttributes v) => v.booth;
  static const Field<AuthorAttributes, String> _f$booth =
      Field('booth', _$booth, opt: true);
  static String? _$nicoVideo(AuthorAttributes v) => v.nicoVideo;
  static const Field<AuthorAttributes, String> _f$nicoVideo =
      Field('nicoVideo', _$nicoVideo, opt: true);
  static String? _$skeb(AuthorAttributes v) => v.skeb;
  static const Field<AuthorAttributes, String> _f$skeb =
      Field('skeb', _$skeb, opt: true);
  static String? _$fantia(AuthorAttributes v) => v.fantia;
  static const Field<AuthorAttributes, String> _f$fantia =
      Field('fantia', _$fantia, opt: true);
  static String? _$tumblr(AuthorAttributes v) => v.tumblr;
  static const Field<AuthorAttributes, String> _f$tumblr =
      Field('tumblr', _$tumblr, opt: true);
  static String? _$youtube(AuthorAttributes v) => v.youtube;
  static const Field<AuthorAttributes, String> _f$youtube =
      Field('youtube', _$youtube, opt: true);
  static String? _$weibo(AuthorAttributes v) => v.weibo;
  static const Field<AuthorAttributes, String> _f$weibo =
      Field('weibo', _$weibo, opt: true);
  static String? _$naver(AuthorAttributes v) => v.naver;
  static const Field<AuthorAttributes, String> _f$naver =
      Field('naver', _$naver, opt: true);
  static String? _$namicomi(AuthorAttributes v) => v.namicomi;
  static const Field<AuthorAttributes, String> _f$namicomi =
      Field('namicomi', _$namicomi, opt: true);
  static String? _$website(AuthorAttributes v) => v.website;
  static const Field<AuthorAttributes, String> _f$website =
      Field('website', _$website, opt: true);
  static int _$version(AuthorAttributes v) => v.version;
  static const Field<AuthorAttributes, int> _f$version =
      Field('version', _$version);
  static DateTime _$createdAt(AuthorAttributes v) => v.createdAt;
  static const Field<AuthorAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(AuthorAttributes v) => v.updatedAt;
  static const Field<AuthorAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<AuthorAttributes> fields = const {
    #name: _f$name,
    #imageUrl: _f$imageUrl,
    #biography: _f$biography,
    #twitter: _f$twitter,
    #pixiv: _f$pixiv,
    #melonBook: _f$melonBook,
    #fanBox: _f$fanBox,
    #booth: _f$booth,
    #nicoVideo: _f$nicoVideo,
    #skeb: _f$skeb,
    #fantia: _f$fantia,
    #tumblr: _f$tumblr,
    #youtube: _f$youtube,
    #weibo: _f$weibo,
    #naver: _f$naver,
    #namicomi: _f$namicomi,
    #website: _f$website,
    #version: _f$version,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static AuthorAttributes _instantiate(DecodingData data) {
    return AuthorAttributes(
        name: data.dec(_f$name),
        imageUrl: data.dec(_f$imageUrl),
        biography: data.dec(_f$biography),
        twitter: data.dec(_f$twitter),
        pixiv: data.dec(_f$pixiv),
        melonBook: data.dec(_f$melonBook),
        fanBox: data.dec(_f$fanBox),
        booth: data.dec(_f$booth),
        nicoVideo: data.dec(_f$nicoVideo),
        skeb: data.dec(_f$skeb),
        fantia: data.dec(_f$fantia),
        tumblr: data.dec(_f$tumblr),
        youtube: data.dec(_f$youtube),
        weibo: data.dec(_f$weibo),
        naver: data.dec(_f$naver),
        namicomi: data.dec(_f$namicomi),
        website: data.dec(_f$website),
        version: data.dec(_f$version),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthorAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthorAttributes>(map);
  }

  static AuthorAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<AuthorAttributes>(json);
  }
}

mixin AuthorAttributesMappable {
  String toJson() {
    return AuthorAttributesMapper.ensureInitialized()
        .encodeJson<AuthorAttributes>(this as AuthorAttributes);
  }

  Map<String, dynamic> toMap() {
    return AuthorAttributesMapper.ensureInitialized()
        .encodeMap<AuthorAttributes>(this as AuthorAttributes);
  }

  AuthorAttributesCopyWith<AuthorAttributes, AuthorAttributes, AuthorAttributes>
      get copyWith =>
          _AuthorAttributesCopyWithImpl<AuthorAttributes, AuthorAttributes>(
              this as AuthorAttributes, $identity, $identity);
  @override
  String toString() {
    return AuthorAttributesMapper.ensureInitialized()
        .stringifyValue(this as AuthorAttributes);
  }

  @override
  bool operator ==(Object other) {
    return AuthorAttributesMapper.ensureInitialized()
        .equalsValue(this as AuthorAttributes, other);
  }

  @override
  int get hashCode {
    return AuthorAttributesMapper.ensureInitialized()
        .hashValue(this as AuthorAttributes);
  }
}

extension AuthorAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthorAttributes, $Out> {
  AuthorAttributesCopyWith<$R, AuthorAttributes, $Out>
      get $asAuthorAttributes => $base
          .as((v, t, t2) => _AuthorAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthorAttributesCopyWith<$R, $In extends AuthorAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get biography;
  $R call(
      {String? name,
      String? imageUrl,
      Map<String, String>? biography,
      String? twitter,
      String? pixiv,
      String? melonBook,
      String? fanBox,
      String? booth,
      String? nicoVideo,
      String? skeb,
      String? fantia,
      String? tumblr,
      String? youtube,
      String? weibo,
      String? naver,
      String? namicomi,
      String? website,
      int? version,
      DateTime? createdAt,
      DateTime? updatedAt});
  AuthorAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthorAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthorAttributes, $Out>
    implements AuthorAttributesCopyWith<$R, AuthorAttributes, $Out> {
  _AuthorAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthorAttributes> $mapper =
      AuthorAttributesMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get biography => MapCopyWith($value.biography,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(biography: v));
  @override
  $R call(
          {String? name,
          Object? imageUrl = $none,
          Map<String, String>? biography,
          Object? twitter = $none,
          Object? pixiv = $none,
          Object? melonBook = $none,
          Object? fanBox = $none,
          Object? booth = $none,
          Object? nicoVideo = $none,
          Object? skeb = $none,
          Object? fantia = $none,
          Object? tumblr = $none,
          Object? youtube = $none,
          Object? weibo = $none,
          Object? naver = $none,
          Object? namicomi = $none,
          Object? website = $none,
          int? version,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (imageUrl != $none) #imageUrl: imageUrl,
        if (biography != null) #biography: biography,
        if (twitter != $none) #twitter: twitter,
        if (pixiv != $none) #pixiv: pixiv,
        if (melonBook != $none) #melonBook: melonBook,
        if (fanBox != $none) #fanBox: fanBox,
        if (booth != $none) #booth: booth,
        if (nicoVideo != $none) #nicoVideo: nicoVideo,
        if (skeb != $none) #skeb: skeb,
        if (fantia != $none) #fantia: fantia,
        if (tumblr != $none) #tumblr: tumblr,
        if (youtube != $none) #youtube: youtube,
        if (weibo != $none) #weibo: weibo,
        if (naver != $none) #naver: naver,
        if (namicomi != $none) #namicomi: namicomi,
        if (website != $none) #website: website,
        if (version != null) #version: version,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  AuthorAttributes $make(CopyWithData data) => AuthorAttributes(
      name: data.get(#name, or: $value.name),
      imageUrl: data.get(#imageUrl, or: $value.imageUrl),
      biography: data.get(#biography, or: $value.biography),
      twitter: data.get(#twitter, or: $value.twitter),
      pixiv: data.get(#pixiv, or: $value.pixiv),
      melonBook: data.get(#melonBook, or: $value.melonBook),
      fanBox: data.get(#fanBox, or: $value.fanBox),
      booth: data.get(#booth, or: $value.booth),
      nicoVideo: data.get(#nicoVideo, or: $value.nicoVideo),
      skeb: data.get(#skeb, or: $value.skeb),
      fantia: data.get(#fantia, or: $value.fantia),
      tumblr: data.get(#tumblr, or: $value.tumblr),
      youtube: data.get(#youtube, or: $value.youtube),
      weibo: data.get(#weibo, or: $value.weibo),
      naver: data.get(#naver, or: $value.naver),
      namicomi: data.get(#namicomi, or: $value.namicomi),
      website: data.get(#website, or: $value.website),
      version: data.get(#version, or: $value.version),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  AuthorAttributesCopyWith<$R2, AuthorAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthorAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChapterAttributesMapper extends ClassMapperBase<ChapterAttributes> {
  ChapterAttributesMapper._();

  static ChapterAttributesMapper? _instance;
  static ChapterAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChapterAttributesMapper._());
      MapperContainer.globals.useAll([UuidValueMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'ChapterAttributes';

  static String? _$title(ChapterAttributes v) => v.title;
  static const Field<ChapterAttributes, String> _f$title =
      Field('title', _$title);
  static String? _$volume(ChapterAttributes v) => v.volume;
  static const Field<ChapterAttributes, String> _f$volume =
      Field('volume', _$volume, opt: true);
  static String? _$chapter(ChapterAttributes v) => v.chapter;
  static const Field<ChapterAttributes, String> _f$chapter =
      Field('chapter', _$chapter, opt: true);
  static int _$pages(ChapterAttributes v) => v.pages;
  static const Field<ChapterAttributes, int> _f$pages = Field('pages', _$pages);
  static String _$translatedLanguage(ChapterAttributes v) =>
      v.translatedLanguage;
  static const Field<ChapterAttributes, String> _f$translatedLanguage =
      Field('translatedLanguage', _$translatedLanguage);
  static UuidValue? _$uploader(ChapterAttributes v) => v.uploader;
  static const Field<ChapterAttributes, UuidValue> _f$uploader =
      Field('uploader', _$uploader, opt: true);
  static String? _$externalUrl(ChapterAttributes v) => v.externalUrl;
  static const Field<ChapterAttributes, String> _f$externalUrl =
      Field('externalUrl', _$externalUrl, opt: true);
  static int _$version(ChapterAttributes v) => v.version;
  static const Field<ChapterAttributes, int> _f$version =
      Field('version', _$version);
  static DateTime _$createdAt(ChapterAttributes v) => v.createdAt;
  static const Field<ChapterAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(ChapterAttributes v) => v.updatedAt;
  static const Field<ChapterAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static DateTime _$publishAt(ChapterAttributes v) => v.publishAt;
  static const Field<ChapterAttributes, DateTime> _f$publishAt =
      Field('publishAt', _$publishAt);
  static DateTime _$readableAt(ChapterAttributes v) => v.readableAt;
  static const Field<ChapterAttributes, DateTime> _f$readableAt =
      Field('readableAt', _$readableAt);

  @override
  final MappableFields<ChapterAttributes> fields = const {
    #title: _f$title,
    #volume: _f$volume,
    #chapter: _f$chapter,
    #pages: _f$pages,
    #translatedLanguage: _f$translatedLanguage,
    #uploader: _f$uploader,
    #externalUrl: _f$externalUrl,
    #version: _f$version,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #publishAt: _f$publishAt,
    #readableAt: _f$readableAt,
  };

  static ChapterAttributes _instantiate(DecodingData data) {
    return ChapterAttributes(
        title: data.dec(_f$title),
        volume: data.dec(_f$volume),
        chapter: data.dec(_f$chapter),
        pages: data.dec(_f$pages),
        translatedLanguage: data.dec(_f$translatedLanguage),
        uploader: data.dec(_f$uploader),
        externalUrl: data.dec(_f$externalUrl),
        version: data.dec(_f$version),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        publishAt: data.dec(_f$publishAt),
        readableAt: data.dec(_f$readableAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ChapterAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChapterAttributes>(map);
  }

  static ChapterAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<ChapterAttributes>(json);
  }
}

mixin ChapterAttributesMappable {
  String toJson() {
    return ChapterAttributesMapper.ensureInitialized()
        .encodeJson<ChapterAttributes>(this as ChapterAttributes);
  }

  Map<String, dynamic> toMap() {
    return ChapterAttributesMapper.ensureInitialized()
        .encodeMap<ChapterAttributes>(this as ChapterAttributes);
  }

  ChapterAttributesCopyWith<ChapterAttributes, ChapterAttributes,
          ChapterAttributes>
      get copyWith =>
          _ChapterAttributesCopyWithImpl<ChapterAttributes, ChapterAttributes>(
              this as ChapterAttributes, $identity, $identity);
  @override
  String toString() {
    return ChapterAttributesMapper.ensureInitialized()
        .stringifyValue(this as ChapterAttributes);
  }

  @override
  bool operator ==(Object other) {
    return ChapterAttributesMapper.ensureInitialized()
        .equalsValue(this as ChapterAttributes, other);
  }

  @override
  int get hashCode {
    return ChapterAttributesMapper.ensureInitialized()
        .hashValue(this as ChapterAttributes);
  }
}

extension ChapterAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChapterAttributes, $Out> {
  ChapterAttributesCopyWith<$R, ChapterAttributes, $Out>
      get $asChapterAttributes => $base
          .as((v, t, t2) => _ChapterAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChapterAttributesCopyWith<$R, $In extends ChapterAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? title,
      String? volume,
      String? chapter,
      int? pages,
      String? translatedLanguage,
      UuidValue? uploader,
      String? externalUrl,
      int? version,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? publishAt,
      DateTime? readableAt});
  ChapterAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChapterAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChapterAttributes, $Out>
    implements ChapterAttributesCopyWith<$R, ChapterAttributes, $Out> {
  _ChapterAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChapterAttributes> $mapper =
      ChapterAttributesMapper.ensureInitialized();
  @override
  $R call(
          {Object? title = $none,
          Object? volume = $none,
          Object? chapter = $none,
          int? pages,
          String? translatedLanguage,
          Object? uploader = $none,
          Object? externalUrl = $none,
          int? version,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? publishAt,
          DateTime? readableAt}) =>
      $apply(FieldCopyWithData({
        if (title != $none) #title: title,
        if (volume != $none) #volume: volume,
        if (chapter != $none) #chapter: chapter,
        if (pages != null) #pages: pages,
        if (translatedLanguage != null) #translatedLanguage: translatedLanguage,
        if (uploader != $none) #uploader: uploader,
        if (externalUrl != $none) #externalUrl: externalUrl,
        if (version != null) #version: version,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (publishAt != null) #publishAt: publishAt,
        if (readableAt != null) #readableAt: readableAt
      }));
  @override
  ChapterAttributes $make(CopyWithData data) => ChapterAttributes(
      title: data.get(#title, or: $value.title),
      volume: data.get(#volume, or: $value.volume),
      chapter: data.get(#chapter, or: $value.chapter),
      pages: data.get(#pages, or: $value.pages),
      translatedLanguage:
          data.get(#translatedLanguage, or: $value.translatedLanguage),
      uploader: data.get(#uploader, or: $value.uploader),
      externalUrl: data.get(#externalUrl, or: $value.externalUrl),
      version: data.get(#version, or: $value.version),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      publishAt: data.get(#publishAt, or: $value.publishAt),
      readableAt: data.get(#readableAt, or: $value.readableAt));

  @override
  ChapterAttributesCopyWith<$R2, ChapterAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ChapterAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaAttributesMapper extends ClassMapperBase<MangaAttributes> {
  MangaAttributesMapper._();

  static MangaAttributesMapper? _instance;
  static MangaAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaAttributesMapper._());
      MapperContainer.globals.useAll([UuidValueMapper()]);
      PublicationDemographicMapper.ensureInitialized();
      StatusMapper.ensureInitialized();
      ContentRatingMapper.ensureInitialized();
      TagMapper.ensureInitialized();
      StateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaAttributes';

  static Map<String, String> _$title(MangaAttributes v) => v.title;
  static const Field<MangaAttributes, Map<String, String>> _f$title =
      Field('title', _$title);
  static List<Map<String, String>> _$altTitles(MangaAttributes v) =>
      v.altTitles;
  static const Field<MangaAttributes, List<Map<String, String>>> _f$altTitles =
      Field('altTitles', _$altTitles);
  static Map<String, String> _$description(MangaAttributes v) => v.description;
  static const Field<MangaAttributes, Map<String, String>> _f$description =
      Field('description', _$description);
  static bool _$isLocked(MangaAttributes v) => v.isLocked;
  static const Field<MangaAttributes, bool> _f$isLocked =
      Field('isLocked', _$isLocked);
  static Map<String, String>? _$links(MangaAttributes v) => v.links;
  static const Field<MangaAttributes, Map<String, String>> _f$links =
      Field('links', _$links, opt: true);
  static String _$originalLanguage(MangaAttributes v) => v.originalLanguage;
  static const Field<MangaAttributes, String> _f$originalLanguage =
      Field('originalLanguage', _$originalLanguage);
  static String? _$lastVolume(MangaAttributes v) => v.lastVolume;
  static const Field<MangaAttributes, String> _f$lastVolume =
      Field('lastVolume', _$lastVolume, opt: true);
  static String? _$lastChapter(MangaAttributes v) => v.lastChapter;
  static const Field<MangaAttributes, String> _f$lastChapter =
      Field('lastChapter', _$lastChapter, opt: true);
  static PublicationDemographic? _$publicationDemographic(MangaAttributes v) =>
      v.publicationDemographic;
  static const Field<MangaAttributes, PublicationDemographic>
      _f$publicationDemographic =
      Field('publicationDemographic', _$publicationDemographic, opt: true);
  static Status _$status(MangaAttributes v) => v.status;
  static const Field<MangaAttributes, Status> _f$status =
      Field('status', _$status);
  static int? _$year(MangaAttributes v) => v.year;
  static const Field<MangaAttributes, int> _f$year =
      Field('year', _$year, opt: true);
  static ContentRating _$contentRating(MangaAttributes v) => v.contentRating;
  static const Field<MangaAttributes, ContentRating> _f$contentRating =
      Field('contentRating', _$contentRating);
  static bool _$chapterNumbersResetOnNewVolume(MangaAttributes v) =>
      v.chapterNumbersResetOnNewVolume;
  static const Field<MangaAttributes, bool> _f$chapterNumbersResetOnNewVolume =
      Field('chapterNumbersResetOnNewVolume', _$chapterNumbersResetOnNewVolume);
  static List<String?> _$availableTranslatedLanguages(MangaAttributes v) =>
      v.availableTranslatedLanguages;
  static const Field<MangaAttributes, List<String?>>
      _f$availableTranslatedLanguages =
      Field('availableTranslatedLanguages', _$availableTranslatedLanguages);
  static UuidValue? _$latestUploadedChapter(MangaAttributes v) =>
      v.latestUploadedChapter;
  static const Field<MangaAttributes, UuidValue> _f$latestUploadedChapter =
      Field('latestUploadedChapter', _$latestUploadedChapter, opt: true);
  static List<Tag> _$tags(MangaAttributes v) => v.tags;
  static const Field<MangaAttributes, List<Tag>> _f$tags =
      Field('tags', _$tags);
  static State _$state(MangaAttributes v) => v.state;
  static const Field<MangaAttributes, State> _f$state = Field('state', _$state);
  static int _$version(MangaAttributes v) => v.version;
  static const Field<MangaAttributes, int> _f$version =
      Field('version', _$version);
  static DateTime _$createdAt(MangaAttributes v) => v.createdAt;
  static const Field<MangaAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(MangaAttributes v) => v.updatedAt;
  static const Field<MangaAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<MangaAttributes> fields = const {
    #title: _f$title,
    #altTitles: _f$altTitles,
    #description: _f$description,
    #isLocked: _f$isLocked,
    #links: _f$links,
    #originalLanguage: _f$originalLanguage,
    #lastVolume: _f$lastVolume,
    #lastChapter: _f$lastChapter,
    #publicationDemographic: _f$publicationDemographic,
    #status: _f$status,
    #year: _f$year,
    #contentRating: _f$contentRating,
    #chapterNumbersResetOnNewVolume: _f$chapterNumbersResetOnNewVolume,
    #availableTranslatedLanguages: _f$availableTranslatedLanguages,
    #latestUploadedChapter: _f$latestUploadedChapter,
    #tags: _f$tags,
    #state: _f$state,
    #version: _f$version,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static MangaAttributes _instantiate(DecodingData data) {
    return MangaAttributes(
        title: data.dec(_f$title),
        altTitles: data.dec(_f$altTitles),
        description: data.dec(_f$description),
        isLocked: data.dec(_f$isLocked),
        links: data.dec(_f$links),
        originalLanguage: data.dec(_f$originalLanguage),
        lastVolume: data.dec(_f$lastVolume),
        lastChapter: data.dec(_f$lastChapter),
        publicationDemographic: data.dec(_f$publicationDemographic),
        status: data.dec(_f$status),
        year: data.dec(_f$year),
        contentRating: data.dec(_f$contentRating),
        chapterNumbersResetOnNewVolume:
            data.dec(_f$chapterNumbersResetOnNewVolume),
        availableTranslatedLanguages: data.dec(_f$availableTranslatedLanguages),
        latestUploadedChapter: data.dec(_f$latestUploadedChapter),
        tags: data.dec(_f$tags),
        state: data.dec(_f$state),
        version: data.dec(_f$version),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaAttributes>(map);
  }

  static MangaAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<MangaAttributes>(json);
  }
}

mixin MangaAttributesMappable {
  String toJson() {
    return MangaAttributesMapper.ensureInitialized()
        .encodeJson<MangaAttributes>(this as MangaAttributes);
  }

  Map<String, dynamic> toMap() {
    return MangaAttributesMapper.ensureInitialized()
        .encodeMap<MangaAttributes>(this as MangaAttributes);
  }

  MangaAttributesCopyWith<MangaAttributes, MangaAttributes, MangaAttributes>
      get copyWith =>
          _MangaAttributesCopyWithImpl<MangaAttributes, MangaAttributes>(
              this as MangaAttributes, $identity, $identity);
  @override
  String toString() {
    return MangaAttributesMapper.ensureInitialized()
        .stringifyValue(this as MangaAttributes);
  }

  @override
  bool operator ==(Object other) {
    return MangaAttributesMapper.ensureInitialized()
        .equalsValue(this as MangaAttributes, other);
  }

  @override
  int get hashCode {
    return MangaAttributesMapper.ensureInitialized()
        .hashValue(this as MangaAttributes);
  }
}

extension MangaAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaAttributes, $Out> {
  MangaAttributesCopyWith<$R, MangaAttributes, $Out> get $asMangaAttributes =>
      $base.as((v, t, t2) => _MangaAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaAttributesCopyWith<$R, $In extends MangaAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>> get title;
  ListCopyWith<$R, Map<String, String>,
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>
      get altTitles;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get description;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get links;
  ListCopyWith<$R, String?, ObjectCopyWith<$R, String?, String?>?>
      get availableTranslatedLanguages;
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags;
  $R call(
      {Map<String, String>? title,
      List<Map<String, String>>? altTitles,
      Map<String, String>? description,
      bool? isLocked,
      Map<String, String>? links,
      String? originalLanguage,
      String? lastVolume,
      String? lastChapter,
      PublicationDemographic? publicationDemographic,
      Status? status,
      int? year,
      ContentRating? contentRating,
      bool? chapterNumbersResetOnNewVolume,
      List<String?>? availableTranslatedLanguages,
      UuidValue? latestUploadedChapter,
      List<Tag>? tags,
      State? state,
      int? version,
      DateTime? createdAt,
      DateTime? updatedAt});
  MangaAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaAttributes, $Out>
    implements MangaAttributesCopyWith<$R, MangaAttributes, $Out> {
  _MangaAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaAttributes> $mapper =
      MangaAttributesMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get title => MapCopyWith($value.title,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(title: v));
  @override
  ListCopyWith<$R, Map<String, String>,
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>
      get altTitles => ListCopyWith($value.altTitles,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(altTitles: v));
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get description => MapCopyWith(
          $value.description,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(description: v));
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get links => $value.links != null
          ? MapCopyWith($value.links!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(links: v))
          : null;
  @override
  ListCopyWith<$R, String?, ObjectCopyWith<$R, String?, String?>?>
      get availableTranslatedLanguages => ListCopyWith(
          $value.availableTranslatedLanguages,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(availableTranslatedLanguages: v));
  @override
  ListCopyWith<$R, Tag, TagCopyWith<$R, Tag, Tag>> get tags => ListCopyWith(
      $value.tags, (v, t) => v.copyWith.$chain(t), (v) => call(tags: v));
  @override
  $R call(
          {Map<String, String>? title,
          List<Map<String, String>>? altTitles,
          Map<String, String>? description,
          bool? isLocked,
          Object? links = $none,
          String? originalLanguage,
          Object? lastVolume = $none,
          Object? lastChapter = $none,
          Object? publicationDemographic = $none,
          Status? status,
          Object? year = $none,
          ContentRating? contentRating,
          bool? chapterNumbersResetOnNewVolume,
          List<String?>? availableTranslatedLanguages,
          Object? latestUploadedChapter = $none,
          List<Tag>? tags,
          State? state,
          int? version,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (altTitles != null) #altTitles: altTitles,
        if (description != null) #description: description,
        if (isLocked != null) #isLocked: isLocked,
        if (links != $none) #links: links,
        if (originalLanguage != null) #originalLanguage: originalLanguage,
        if (lastVolume != $none) #lastVolume: lastVolume,
        if (lastChapter != $none) #lastChapter: lastChapter,
        if (publicationDemographic != $none)
          #publicationDemographic: publicationDemographic,
        if (status != null) #status: status,
        if (year != $none) #year: year,
        if (contentRating != null) #contentRating: contentRating,
        if (chapterNumbersResetOnNewVolume != null)
          #chapterNumbersResetOnNewVolume: chapterNumbersResetOnNewVolume,
        if (availableTranslatedLanguages != null)
          #availableTranslatedLanguages: availableTranslatedLanguages,
        if (latestUploadedChapter != $none)
          #latestUploadedChapter: latestUploadedChapter,
        if (tags != null) #tags: tags,
        if (state != null) #state: state,
        if (version != null) #version: version,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  MangaAttributes $make(CopyWithData data) => MangaAttributes(
      title: data.get(#title, or: $value.title),
      altTitles: data.get(#altTitles, or: $value.altTitles),
      description: data.get(#description, or: $value.description),
      isLocked: data.get(#isLocked, or: $value.isLocked),
      links: data.get(#links, or: $value.links),
      originalLanguage:
          data.get(#originalLanguage, or: $value.originalLanguage),
      lastVolume: data.get(#lastVolume, or: $value.lastVolume),
      lastChapter: data.get(#lastChapter, or: $value.lastChapter),
      publicationDemographic:
          data.get(#publicationDemographic, or: $value.publicationDemographic),
      status: data.get(#status, or: $value.status),
      year: data.get(#year, or: $value.year),
      contentRating: data.get(#contentRating, or: $value.contentRating),
      chapterNumbersResetOnNewVolume: data.get(#chapterNumbersResetOnNewVolume,
          or: $value.chapterNumbersResetOnNewVolume),
      availableTranslatedLanguages: data.get(#availableTranslatedLanguages,
          or: $value.availableTranslatedLanguages),
      latestUploadedChapter:
          data.get(#latestUploadedChapter, or: $value.latestUploadedChapter),
      tags: data.get(#tags, or: $value.tags),
      state: data.get(#state, or: $value.state),
      version: data.get(#version, or: $value.version),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  MangaAttributesCopyWith<$R2, MangaAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TagAttributesMapper extends ClassMapperBase<TagAttributes> {
  TagAttributesMapper._();

  static TagAttributesMapper? _instance;
  static TagAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagAttributesMapper._());
      TagGroupMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TagAttributes';

  static Map<String, String> _$name(TagAttributes v) => v.name;
  static const Field<TagAttributes, Map<String, String>> _f$name =
      Field('name', _$name);
  static TagGroup _$group(TagAttributes v) => v.group;
  static const Field<TagAttributes, TagGroup> _f$group =
      Field('group', _$group);
  static int _$version(TagAttributes v) => v.version;
  static const Field<TagAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<TagAttributes> fields = const {
    #name: _f$name,
    #group: _f$group,
    #version: _f$version,
  };

  static TagAttributes _instantiate(DecodingData data) {
    return TagAttributes(
        name: data.dec(_f$name),
        group: data.dec(_f$group),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static TagAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagAttributes>(map);
  }

  static TagAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<TagAttributes>(json);
  }
}

mixin TagAttributesMappable {
  String toJson() {
    return TagAttributesMapper.ensureInitialized()
        .encodeJson<TagAttributes>(this as TagAttributes);
  }

  Map<String, dynamic> toMap() {
    return TagAttributesMapper.ensureInitialized()
        .encodeMap<TagAttributes>(this as TagAttributes);
  }

  TagAttributesCopyWith<TagAttributes, TagAttributes, TagAttributes>
      get copyWith => _TagAttributesCopyWithImpl<TagAttributes, TagAttributes>(
          this as TagAttributes, $identity, $identity);
  @override
  String toString() {
    return TagAttributesMapper.ensureInitialized()
        .stringifyValue(this as TagAttributes);
  }

  @override
  bool operator ==(Object other) {
    return TagAttributesMapper.ensureInitialized()
        .equalsValue(this as TagAttributes, other);
  }

  @override
  int get hashCode {
    return TagAttributesMapper.ensureInitialized()
        .hashValue(this as TagAttributes);
  }
}

extension TagAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TagAttributes, $Out> {
  TagAttributesCopyWith<$R, TagAttributes, $Out> get $asTagAttributes =>
      $base.as((v, t, t2) => _TagAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagAttributesCopyWith<$R, $In extends TagAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>> get name;
  $R call({Map<String, String>? name, TagGroup? group, int? version});
  TagAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagAttributes, $Out>
    implements TagAttributesCopyWith<$R, TagAttributes, $Out> {
  _TagAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagAttributes> $mapper =
      TagAttributesMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get name => MapCopyWith($value.name,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(name: v));
  @override
  $R call({Map<String, String>? name, TagGroup? group, int? version}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (group != null) #group: group,
        if (version != null) #version: version
      }));
  @override
  TagAttributes $make(CopyWithData data) => TagAttributes(
      name: data.get(#name, or: $value.name),
      group: data.get(#group, or: $value.group),
      version: data.get(#version, or: $value.version));

  @override
  TagAttributesCopyWith<$R2, TagAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
