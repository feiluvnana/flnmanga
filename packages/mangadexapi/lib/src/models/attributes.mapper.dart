// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attributes.dart';

class MangaRelatedMapper extends EnumMapper<MangaRelated> {
  MangaRelatedMapper._();

  static MangaRelatedMapper? _instance;
  static MangaRelatedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaRelatedMapper._());
    }
    return _instance!;
  }

  static MangaRelated fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  MangaRelated decode(dynamic value) {
    switch (value) {
      case r'monochrome':
        return MangaRelated.monochrome;
      case r'main_story':
        return MangaRelated.main_story;
      case r'adapted_from':
        return MangaRelated.adapted_from;
      case r'based_on':
        return MangaRelated.based_on;
      case r'prequel':
        return MangaRelated.prequel;
      case r'side_story':
        return MangaRelated.side_story;
      case r'doujinshi':
        return MangaRelated.doujinshi;
      case r'same_franchise':
        return MangaRelated.same_franchise;
      case r'shared_universe':
        return MangaRelated.shared_universe;
      case r'sequel':
        return MangaRelated.sequel;
      case r'spin_off':
        return MangaRelated.spin_off;
      case r'alternate_story':
        return MangaRelated.alternate_story;
      case r'alternate_version':
        return MangaRelated.alternate_version;
      case r'preserialization':
        return MangaRelated.preserialization;
      case r'colored':
        return MangaRelated.colored;
      case r'serialization':
        return MangaRelated.serialization;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(MangaRelated self) {
    switch (self) {
      case MangaRelated.monochrome:
        return r'monochrome';
      case MangaRelated.main_story:
        return r'main_story';
      case MangaRelated.adapted_from:
        return r'adapted_from';
      case MangaRelated.based_on:
        return r'based_on';
      case MangaRelated.prequel:
        return r'prequel';
      case MangaRelated.side_story:
        return r'side_story';
      case MangaRelated.doujinshi:
        return r'doujinshi';
      case MangaRelated.same_franchise:
        return r'same_franchise';
      case MangaRelated.shared_universe:
        return r'shared_universe';
      case MangaRelated.sequel:
        return r'sequel';
      case MangaRelated.spin_off:
        return r'spin_off';
      case MangaRelated.alternate_story:
        return r'alternate_story';
      case MangaRelated.alternate_version:
        return r'alternate_version';
      case MangaRelated.preserialization:
        return r'preserialization';
      case MangaRelated.colored:
        return r'colored';
      case MangaRelated.serialization:
        return r'serialization';
    }
  }
}

extension MangaRelatedMapperExtension on MangaRelated {
  String toValue() {
    MangaRelatedMapper.ensureInitialized();
    return MapperContainer.globals.toValue<MangaRelated>(this) as String;
  }
}

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

class ReasonCategoryMapper extends EnumMapper<ReasonCategory> {
  ReasonCategoryMapper._();

  static ReasonCategoryMapper? _instance;
  static ReasonCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReasonCategoryMapper._());
    }
    return _instance!;
  }

  static ReasonCategory fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ReasonCategory decode(dynamic value) {
    switch (value) {
      case r'manga':
        return ReasonCategory.manga;
      case r'chapter':
        return ReasonCategory.chapter;
      case r'scanlation_group':
        return ReasonCategory.scanlation_group;
      case r'user':
        return ReasonCategory.user;
      case r'author':
        return ReasonCategory.author;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ReasonCategory self) {
    switch (self) {
      case ReasonCategory.manga:
        return r'manga';
      case ReasonCategory.chapter:
        return r'chapter';
      case ReasonCategory.scanlation_group:
        return r'scanlation_group';
      case ReasonCategory.user:
        return r'user';
      case ReasonCategory.author:
        return r'author';
    }
  }
}

extension ReasonCategoryMapperExtension on ReasonCategory {
  String toValue() {
    ReasonCategoryMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ReasonCategory>(this) as String;
  }
}

class ApiClientAttributesMapper extends ClassMapperBase<ApiClientAttributes> {
  ApiClientAttributesMapper._();

  static ApiClientAttributesMapper? _instance;
  static ApiClientAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ApiClientAttributesMapper._());
      ApiClientStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ApiClientAttributes';

  static String _$name(ApiClientAttributes v) => v.name;
  static const Field<ApiClientAttributes, String> _f$name =
      Field('name', _$name);
  static String? _$description(ApiClientAttributes v) => v.description;
  static const Field<ApiClientAttributes, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$profile(ApiClientAttributes v) => v.profile;
  static const Field<ApiClientAttributes, String> _f$profile =
      Field('profile', _$profile, opt: true);
  static String _$externalClientId(ApiClientAttributes v) => v.externalClientId;
  static const Field<ApiClientAttributes, String> _f$externalClientId =
      Field('externalClientId', _$externalClientId);
  static bool _$isActive(ApiClientAttributes v) => v.isActive;
  static const Field<ApiClientAttributes, bool> _f$isActive =
      Field('isActive', _$isActive);
  static ApiClientState _$state(ApiClientAttributes v) => v.state;
  static const Field<ApiClientAttributes, ApiClientState> _f$state =
      Field('state', _$state);
  static DateTime _$createdAt(ApiClientAttributes v) => v.createdAt;
  static const Field<ApiClientAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(ApiClientAttributes v) => v.updatedAt;
  static const Field<ApiClientAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);
  static int _$version(ApiClientAttributes v) => v.version;
  static const Field<ApiClientAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<ApiClientAttributes> fields = const {
    #name: _f$name,
    #description: _f$description,
    #profile: _f$profile,
    #externalClientId: _f$externalClientId,
    #isActive: _f$isActive,
    #state: _f$state,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
    #version: _f$version,
  };

  static ApiClientAttributes _instantiate(DecodingData data) {
    return ApiClientAttributes(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        profile: data.dec(_f$profile),
        externalClientId: data.dec(_f$externalClientId),
        isActive: data.dec(_f$isActive),
        state: data.dec(_f$state),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static ApiClientAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ApiClientAttributes>(map);
  }

  static ApiClientAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<ApiClientAttributes>(json);
  }
}

mixin ApiClientAttributesMappable {
  String toJson() {
    return ApiClientAttributesMapper.ensureInitialized()
        .encodeJson<ApiClientAttributes>(this as ApiClientAttributes);
  }

  Map<String, dynamic> toMap() {
    return ApiClientAttributesMapper.ensureInitialized()
        .encodeMap<ApiClientAttributes>(this as ApiClientAttributes);
  }

  ApiClientAttributesCopyWith<ApiClientAttributes, ApiClientAttributes,
      ApiClientAttributes> get copyWith => _ApiClientAttributesCopyWithImpl<
          ApiClientAttributes, ApiClientAttributes>(
      this as ApiClientAttributes, $identity, $identity);
  @override
  String toString() {
    return ApiClientAttributesMapper.ensureInitialized()
        .stringifyValue(this as ApiClientAttributes);
  }

  @override
  bool operator ==(Object other) {
    return ApiClientAttributesMapper.ensureInitialized()
        .equalsValue(this as ApiClientAttributes, other);
  }

  @override
  int get hashCode {
    return ApiClientAttributesMapper.ensureInitialized()
        .hashValue(this as ApiClientAttributes);
  }
}

extension ApiClientAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ApiClientAttributes, $Out> {
  ApiClientAttributesCopyWith<$R, ApiClientAttributes, $Out>
      get $asApiClientAttributes => $base.as(
          (v, t, t2) => _ApiClientAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ApiClientAttributesCopyWith<$R, $In extends ApiClientAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? name,
      String? description,
      String? profile,
      String? externalClientId,
      bool? isActive,
      ApiClientState? state,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? version});
  ApiClientAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ApiClientAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ApiClientAttributes, $Out>
    implements ApiClientAttributesCopyWith<$R, ApiClientAttributes, $Out> {
  _ApiClientAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ApiClientAttributes> $mapper =
      ApiClientAttributesMapper.ensureInitialized();
  @override
  $R call(
          {String? name,
          Object? description = $none,
          Object? profile = $none,
          String? externalClientId,
          bool? isActive,
          ApiClientState? state,
          DateTime? createdAt,
          DateTime? updatedAt,
          int? version}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (profile != $none) #profile: profile,
        if (externalClientId != null) #externalClientId: externalClientId,
        if (isActive != null) #isActive: isActive,
        if (state != null) #state: state,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt,
        if (version != null) #version: version
      }));
  @override
  ApiClientAttributes $make(CopyWithData data) => ApiClientAttributes(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      profile: data.get(#profile, or: $value.profile),
      externalClientId:
          data.get(#externalClientId, or: $value.externalClientId),
      isActive: data.get(#isActive, or: $value.isActive),
      state: data.get(#state, or: $value.state),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt),
      version: data.get(#version, or: $value.version));

  @override
  ApiClientAttributesCopyWith<$R2, ApiClientAttributes, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ApiClientAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
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
      MapperContainer.globals.useAll([UuidMapper()]);
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
  static Uuid? _$uploader(ChapterAttributes v) => v.uploader;
  static const Field<ChapterAttributes, Uuid> _f$uploader =
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
      Uuid? uploader,
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

class CoverArtAttributesMapper extends ClassMapperBase<CoverArtAttributes> {
  CoverArtAttributesMapper._();

  static CoverArtAttributesMapper? _instance;
  static CoverArtAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CoverArtAttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CoverArtAttributes';

  static String? _$volume(CoverArtAttributes v) => v.volume;
  static const Field<CoverArtAttributes, String> _f$volume =
      Field('volume', _$volume, opt: true);
  static String _$fileName(CoverArtAttributes v) => v.fileName;
  static const Field<CoverArtAttributes, String> _f$fileName =
      Field('fileName', _$fileName);
  static String? _$description(CoverArtAttributes v) => v.description;
  static const Field<CoverArtAttributes, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$locale(CoverArtAttributes v) => v.locale;
  static const Field<CoverArtAttributes, String> _f$locale =
      Field('locale', _$locale, opt: true);
  static int _$version(CoverArtAttributes v) => v.version;
  static const Field<CoverArtAttributes, int> _f$version =
      Field('version', _$version);
  static DateTime _$createdAt(CoverArtAttributes v) => v.createdAt;
  static const Field<CoverArtAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(CoverArtAttributes v) => v.updatedAt;
  static const Field<CoverArtAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<CoverArtAttributes> fields = const {
    #volume: _f$volume,
    #fileName: _f$fileName,
    #description: _f$description,
    #locale: _f$locale,
    #version: _f$version,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static CoverArtAttributes _instantiate(DecodingData data) {
    return CoverArtAttributes(
        volume: data.dec(_f$volume),
        fileName: data.dec(_f$fileName),
        description: data.dec(_f$description),
        locale: data.dec(_f$locale),
        version: data.dec(_f$version),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static CoverArtAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CoverArtAttributes>(map);
  }

  static CoverArtAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<CoverArtAttributes>(json);
  }
}

mixin CoverArtAttributesMappable {
  String toJson() {
    return CoverArtAttributesMapper.ensureInitialized()
        .encodeJson<CoverArtAttributes>(this as CoverArtAttributes);
  }

  Map<String, dynamic> toMap() {
    return CoverArtAttributesMapper.ensureInitialized()
        .encodeMap<CoverArtAttributes>(this as CoverArtAttributes);
  }

  CoverArtAttributesCopyWith<CoverArtAttributes, CoverArtAttributes,
          CoverArtAttributes>
      get copyWith => _CoverArtAttributesCopyWithImpl<CoverArtAttributes,
          CoverArtAttributes>(this as CoverArtAttributes, $identity, $identity);
  @override
  String toString() {
    return CoverArtAttributesMapper.ensureInitialized()
        .stringifyValue(this as CoverArtAttributes);
  }

  @override
  bool operator ==(Object other) {
    return CoverArtAttributesMapper.ensureInitialized()
        .equalsValue(this as CoverArtAttributes, other);
  }

  @override
  int get hashCode {
    return CoverArtAttributesMapper.ensureInitialized()
        .hashValue(this as CoverArtAttributes);
  }
}

extension CoverArtAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CoverArtAttributes, $Out> {
  CoverArtAttributesCopyWith<$R, CoverArtAttributes, $Out>
      get $asCoverArtAttributes => $base.as(
          (v, t, t2) => _CoverArtAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CoverArtAttributesCopyWith<$R, $In extends CoverArtAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? volume,
      String? fileName,
      String? description,
      String? locale,
      int? version,
      DateTime? createdAt,
      DateTime? updatedAt});
  CoverArtAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CoverArtAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CoverArtAttributes, $Out>
    implements CoverArtAttributesCopyWith<$R, CoverArtAttributes, $Out> {
  _CoverArtAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CoverArtAttributes> $mapper =
      CoverArtAttributesMapper.ensureInitialized();
  @override
  $R call(
          {Object? volume = $none,
          String? fileName,
          Object? description = $none,
          Object? locale = $none,
          int? version,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (volume != $none) #volume: volume,
        if (fileName != null) #fileName: fileName,
        if (description != $none) #description: description,
        if (locale != $none) #locale: locale,
        if (version != null) #version: version,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  CoverArtAttributes $make(CopyWithData data) => CoverArtAttributes(
      volume: data.get(#volume, or: $value.volume),
      fileName: data.get(#fileName, or: $value.fileName),
      description: data.get(#description, or: $value.description),
      locale: data.get(#locale, or: $value.locale),
      version: data.get(#version, or: $value.version),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  CoverArtAttributesCopyWith<$R2, CoverArtAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CoverArtAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CustomListAttributesMapper extends ClassMapperBase<CustomListAttributes> {
  CustomListAttributesMapper._();

  static CustomListAttributesMapper? _instance;
  static CustomListAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomListAttributesMapper._());
      CustomListVisibilityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CustomListAttributes';

  static String _$name(CustomListAttributes v) => v.name;
  static const Field<CustomListAttributes, String> _f$name =
      Field('name', _$name);
  static CustomListVisibility _$visibility(CustomListAttributes v) =>
      v.visibility;
  static const Field<CustomListAttributes, CustomListVisibility> _f$visibility =
      Field('visibility', _$visibility);
  static int _$version(CustomListAttributes v) => v.version;
  static const Field<CustomListAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<CustomListAttributes> fields = const {
    #name: _f$name,
    #visibility: _f$visibility,
    #version: _f$version,
  };

  static CustomListAttributes _instantiate(DecodingData data) {
    return CustomListAttributes(
        name: data.dec(_f$name),
        visibility: data.dec(_f$visibility),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomListAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomListAttributes>(map);
  }

  static CustomListAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<CustomListAttributes>(json);
  }
}

mixin CustomListAttributesMappable {
  String toJson() {
    return CustomListAttributesMapper.ensureInitialized()
        .encodeJson<CustomListAttributes>(this as CustomListAttributes);
  }

  Map<String, dynamic> toMap() {
    return CustomListAttributesMapper.ensureInitialized()
        .encodeMap<CustomListAttributes>(this as CustomListAttributes);
  }

  CustomListAttributesCopyWith<CustomListAttributes, CustomListAttributes,
      CustomListAttributes> get copyWith => _CustomListAttributesCopyWithImpl<
          CustomListAttributes, CustomListAttributes>(
      this as CustomListAttributes, $identity, $identity);
  @override
  String toString() {
    return CustomListAttributesMapper.ensureInitialized()
        .stringifyValue(this as CustomListAttributes);
  }

  @override
  bool operator ==(Object other) {
    return CustomListAttributesMapper.ensureInitialized()
        .equalsValue(this as CustomListAttributes, other);
  }

  @override
  int get hashCode {
    return CustomListAttributesMapper.ensureInitialized()
        .hashValue(this as CustomListAttributes);
  }
}

extension CustomListAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomListAttributes, $Out> {
  CustomListAttributesCopyWith<$R, CustomListAttributes, $Out>
      get $asCustomListAttributes => $base.as(
          (v, t, t2) => _CustomListAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CustomListAttributesCopyWith<
    $R,
    $In extends CustomListAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, CustomListVisibility? visibility, int? version});
  CustomListAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CustomListAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomListAttributes, $Out>
    implements CustomListAttributesCopyWith<$R, CustomListAttributes, $Out> {
  _CustomListAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomListAttributes> $mapper =
      CustomListAttributesMapper.ensureInitialized();
  @override
  $R call({String? name, CustomListVisibility? visibility, int? version}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (visibility != null) #visibility: visibility,
        if (version != null) #version: version
      }));
  @override
  CustomListAttributes $make(CopyWithData data) => CustomListAttributes(
      name: data.get(#name, or: $value.name),
      visibility: data.get(#visibility, or: $value.visibility),
      version: data.get(#version, or: $value.version));

  @override
  CustomListAttributesCopyWith<$R2, CustomListAttributes, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CustomListAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MappingIdAttributesMapper extends ClassMapperBase<MappingIdAttributes> {
  MappingIdAttributesMapper._();

  static MappingIdAttributesMapper? _instance;
  static MappingIdAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MappingIdAttributesMapper._());
      LegacyTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MappingIdAttributes';

  static LegacyType _$type(MappingIdAttributes v) => v.type;
  static const Field<MappingIdAttributes, LegacyType> _f$type =
      Field('type', _$type);
  static int _$legacyId(MappingIdAttributes v) => v.legacyId;
  static const Field<MappingIdAttributes, int> _f$legacyId =
      Field('legacyId', _$legacyId);
  static Uuid _$newId(MappingIdAttributes v) => v.newId;
  static const Field<MappingIdAttributes, Uuid> _f$newId =
      Field('newId', _$newId);

  @override
  final MappableFields<MappingIdAttributes> fields = const {
    #type: _f$type,
    #legacyId: _f$legacyId,
    #newId: _f$newId,
  };

  static MappingIdAttributes _instantiate(DecodingData data) {
    return MappingIdAttributes(
        type: data.dec(_f$type),
        legacyId: data.dec(_f$legacyId),
        newId: data.dec(_f$newId));
  }

  @override
  final Function instantiate = _instantiate;

  static MappingIdAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MappingIdAttributes>(map);
  }

  static MappingIdAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<MappingIdAttributes>(json);
  }
}

mixin MappingIdAttributesMappable {
  String toJson() {
    return MappingIdAttributesMapper.ensureInitialized()
        .encodeJson<MappingIdAttributes>(this as MappingIdAttributes);
  }

  Map<String, dynamic> toMap() {
    return MappingIdAttributesMapper.ensureInitialized()
        .encodeMap<MappingIdAttributes>(this as MappingIdAttributes);
  }

  MappingIdAttributesCopyWith<MappingIdAttributes, MappingIdAttributes,
      MappingIdAttributes> get copyWith => _MappingIdAttributesCopyWithImpl<
          MappingIdAttributes, MappingIdAttributes>(
      this as MappingIdAttributes, $identity, $identity);
  @override
  String toString() {
    return MappingIdAttributesMapper.ensureInitialized()
        .stringifyValue(this as MappingIdAttributes);
  }

  @override
  bool operator ==(Object other) {
    return MappingIdAttributesMapper.ensureInitialized()
        .equalsValue(this as MappingIdAttributes, other);
  }

  @override
  int get hashCode {
    return MappingIdAttributesMapper.ensureInitialized()
        .hashValue(this as MappingIdAttributes);
  }
}

extension MappingIdAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MappingIdAttributes, $Out> {
  MappingIdAttributesCopyWith<$R, MappingIdAttributes, $Out>
      get $asMappingIdAttributes => $base.as(
          (v, t, t2) => _MappingIdAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MappingIdAttributesCopyWith<$R, $In extends MappingIdAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({LegacyType? type, int? legacyId, Uuid? newId});
  MappingIdAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MappingIdAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MappingIdAttributes, $Out>
    implements MappingIdAttributesCopyWith<$R, MappingIdAttributes, $Out> {
  _MappingIdAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MappingIdAttributes> $mapper =
      MappingIdAttributesMapper.ensureInitialized();
  @override
  $R call({LegacyType? type, int? legacyId, Uuid? newId}) =>
      $apply(FieldCopyWithData({
        if (type != null) #type: type,
        if (legacyId != null) #legacyId: legacyId,
        if (newId != null) #newId: newId
      }));
  @override
  MappingIdAttributes $make(CopyWithData data) => MappingIdAttributes(
      type: data.get(#type, or: $value.type),
      legacyId: data.get(#legacyId, or: $value.legacyId),
      newId: data.get(#newId, or: $value.newId));

  @override
  MappingIdAttributesCopyWith<$R2, MappingIdAttributes, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MappingIdAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaAttributesMapper extends ClassMapperBase<MangaAttributes> {
  MangaAttributesMapper._();

  static MangaAttributesMapper? _instance;
  static MangaAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaAttributesMapper._());
      MapperContainer.globals.useAll([UuidMapper()]);
      MangaPublicationDemographicMapper.ensureInitialized();
      MangaStatusMapper.ensureInitialized();
      MangaContentRatingMapper.ensureInitialized();
      TagMapper.ensureInitialized();
      MangaStateMapper.ensureInitialized();
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
  static MangaPublicationDemographic? _$publicationDemographic(
          MangaAttributes v) =>
      v.publicationDemographic;
  static const Field<MangaAttributes, MangaPublicationDemographic>
      _f$publicationDemographic =
      Field('publicationDemographic', _$publicationDemographic, opt: true);
  static MangaStatus _$status(MangaAttributes v) => v.status;
  static const Field<MangaAttributes, MangaStatus> _f$status =
      Field('status', _$status);
  static int? _$year(MangaAttributes v) => v.year;
  static const Field<MangaAttributes, int> _f$year =
      Field('year', _$year, opt: true);
  static MangaContentRating _$contentRating(MangaAttributes v) =>
      v.contentRating;
  static const Field<MangaAttributes, MangaContentRating> _f$contentRating =
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
  static Uuid? _$latestUploadedChapter(MangaAttributes v) =>
      v.latestUploadedChapter;
  static const Field<MangaAttributes, Uuid> _f$latestUploadedChapter =
      Field('latestUploadedChapter', _$latestUploadedChapter, opt: true);
  static List<Tag> _$tags(MangaAttributes v) => v.tags;
  static const Field<MangaAttributes, List<Tag>> _f$tags =
      Field('tags', _$tags);
  static MangaState _$state(MangaAttributes v) => v.state;
  static const Field<MangaAttributes, MangaState> _f$state =
      Field('state', _$state);
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
      MangaPublicationDemographic? publicationDemographic,
      MangaStatus? status,
      int? year,
      MangaContentRating? contentRating,
      bool? chapterNumbersResetOnNewVolume,
      List<String?>? availableTranslatedLanguages,
      Uuid? latestUploadedChapter,
      List<Tag>? tags,
      MangaState? state,
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
          MangaStatus? status,
          Object? year = $none,
          MangaContentRating? contentRating,
          bool? chapterNumbersResetOnNewVolume,
          List<String?>? availableTranslatedLanguages,
          Object? latestUploadedChapter = $none,
          List<Tag>? tags,
          MangaState? state,
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

class MangaRelationAttributesMapper
    extends ClassMapperBase<MangaRelationAttributes> {
  MangaRelationAttributesMapper._();

  static MangaRelationAttributesMapper? _instance;
  static MangaRelationAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = MangaRelationAttributesMapper._());
      MangaRelatedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaRelationAttributes';

  static MangaRelated _$type(MangaRelationAttributes v) => v.type;
  static const Field<MangaRelationAttributes, MangaRelated> _f$type =
      Field('type', _$type);
  static int _$version(MangaRelationAttributes v) => v.version;
  static const Field<MangaRelationAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<MangaRelationAttributes> fields = const {
    #type: _f$type,
    #version: _f$version,
  };

  static MangaRelationAttributes _instantiate(DecodingData data) {
    return MangaRelationAttributes(
        type: data.dec(_f$type), version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaRelationAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaRelationAttributes>(map);
  }

  static MangaRelationAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<MangaRelationAttributes>(json);
  }
}

mixin MangaRelationAttributesMappable {
  String toJson() {
    return MangaRelationAttributesMapper.ensureInitialized()
        .encodeJson<MangaRelationAttributes>(this as MangaRelationAttributes);
  }

  Map<String, dynamic> toMap() {
    return MangaRelationAttributesMapper.ensureInitialized()
        .encodeMap<MangaRelationAttributes>(this as MangaRelationAttributes);
  }

  MangaRelationAttributesCopyWith<MangaRelationAttributes,
          MangaRelationAttributes, MangaRelationAttributes>
      get copyWith => _MangaRelationAttributesCopyWithImpl<
              MangaRelationAttributes, MangaRelationAttributes>(
          this as MangaRelationAttributes, $identity, $identity);
  @override
  String toString() {
    return MangaRelationAttributesMapper.ensureInitialized()
        .stringifyValue(this as MangaRelationAttributes);
  }

  @override
  bool operator ==(Object other) {
    return MangaRelationAttributesMapper.ensureInitialized()
        .equalsValue(this as MangaRelationAttributes, other);
  }

  @override
  int get hashCode {
    return MangaRelationAttributesMapper.ensureInitialized()
        .hashValue(this as MangaRelationAttributes);
  }
}

extension MangaRelationAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaRelationAttributes, $Out> {
  MangaRelationAttributesCopyWith<$R, MangaRelationAttributes, $Out>
      get $asMangaRelationAttributes => $base.as((v, t, t2) =>
          _MangaRelationAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaRelationAttributesCopyWith<
    $R,
    $In extends MangaRelationAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({MangaRelated? type, int? version});
  MangaRelationAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaRelationAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaRelationAttributes, $Out>
    implements
        MangaRelationAttributesCopyWith<$R, MangaRelationAttributes, $Out> {
  _MangaRelationAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaRelationAttributes> $mapper =
      MangaRelationAttributesMapper.ensureInitialized();
  @override
  $R call({MangaRelated? type, int? version}) => $apply(FieldCopyWithData(
      {if (type != null) #type: type, if (version != null) #version: version}));
  @override
  MangaRelationAttributes $make(CopyWithData data) => MangaRelationAttributes(
      type: data.get(#type, or: $value.type),
      version: data.get(#version, or: $value.version));

  @override
  MangaRelationAttributesCopyWith<$R2, MangaRelationAttributes, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MangaRelationAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ScanlationGroupAttributesMapper
    extends ClassMapperBase<ScanlationGroupAttributes> {
  ScanlationGroupAttributesMapper._();

  static ScanlationGroupAttributesMapper? _instance;
  static ScanlationGroupAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ScanlationGroupAttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ScanlationGroupAttributes';

  static String _$name(ScanlationGroupAttributes v) => v.name;
  static const Field<ScanlationGroupAttributes, String> _f$name =
      Field('name', _$name);
  static List<Map<String, String>> _$altNames(ScanlationGroupAttributes v) =>
      v.altNames;
  static const Field<ScanlationGroupAttributes, List<Map<String, String>>>
      _f$altNames = Field('altNames', _$altNames);
  static String? _$website(ScanlationGroupAttributes v) => v.website;
  static const Field<ScanlationGroupAttributes, String> _f$website =
      Field('website', _$website, opt: true);
  static String? _$ircServer(ScanlationGroupAttributes v) => v.ircServer;
  static const Field<ScanlationGroupAttributes, String> _f$ircServer =
      Field('ircServer', _$ircServer, opt: true);
  static String? _$ircChannel(ScanlationGroupAttributes v) => v.ircChannel;
  static const Field<ScanlationGroupAttributes, String> _f$ircChannel =
      Field('ircChannel', _$ircChannel, opt: true);
  static String? _$discord(ScanlationGroupAttributes v) => v.discord;
  static const Field<ScanlationGroupAttributes, String> _f$discord =
      Field('discord', _$discord, opt: true);
  static String? _$contactEmail(ScanlationGroupAttributes v) => v.contactEmail;
  static const Field<ScanlationGroupAttributes, String> _f$contactEmail =
      Field('contactEmail', _$contactEmail, opt: true);
  static String? _$description(ScanlationGroupAttributes v) => v.description;
  static const Field<ScanlationGroupAttributes, String> _f$description =
      Field('description', _$description, opt: true);
  static String? _$twitter(ScanlationGroupAttributes v) => v.twitter;
  static const Field<ScanlationGroupAttributes, String> _f$twitter =
      Field('twitter', _$twitter, opt: true);
  static String? _$mangaUpdates(ScanlationGroupAttributes v) => v.mangaUpdates;
  static const Field<ScanlationGroupAttributes, String> _f$mangaUpdates =
      Field('mangaUpdates', _$mangaUpdates, opt: true);
  static String? _$focusedLanguage(ScanlationGroupAttributes v) =>
      v.focusedLanguage;
  static const Field<ScanlationGroupAttributes, String> _f$focusedLanguage =
      Field('focusedLanguage', _$focusedLanguage, opt: true);
  static bool _$locked(ScanlationGroupAttributes v) => v.locked;
  static const Field<ScanlationGroupAttributes, bool> _f$locked =
      Field('locked', _$locked);
  static bool _$official(ScanlationGroupAttributes v) => v.official;
  static const Field<ScanlationGroupAttributes, bool> _f$official =
      Field('official', _$official);
  static bool _$verified(ScanlationGroupAttributes v) => v.verified;
  static const Field<ScanlationGroupAttributes, bool> _f$verified =
      Field('verified', _$verified);
  static bool _$inactive(ScanlationGroupAttributes v) => v.inactive;
  static const Field<ScanlationGroupAttributes, bool> _f$inactive =
      Field('inactive', _$inactive);
  static bool _$exLicensed(ScanlationGroupAttributes v) => v.exLicensed;
  static const Field<ScanlationGroupAttributes, bool> _f$exLicensed =
      Field('exLicensed', _$exLicensed);
  static String _$publishDelay(ScanlationGroupAttributes v) => v.publishDelay;
  static const Field<ScanlationGroupAttributes, String> _f$publishDelay =
      Field('publishDelay', _$publishDelay);
  static int _$version(ScanlationGroupAttributes v) => v.version;
  static const Field<ScanlationGroupAttributes, int> _f$version =
      Field('version', _$version);
  static DateTime _$createdAt(ScanlationGroupAttributes v) => v.createdAt;
  static const Field<ScanlationGroupAttributes, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt);
  static DateTime _$updatedAt(ScanlationGroupAttributes v) => v.updatedAt;
  static const Field<ScanlationGroupAttributes, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt);

  @override
  final MappableFields<ScanlationGroupAttributes> fields = const {
    #name: _f$name,
    #altNames: _f$altNames,
    #website: _f$website,
    #ircServer: _f$ircServer,
    #ircChannel: _f$ircChannel,
    #discord: _f$discord,
    #contactEmail: _f$contactEmail,
    #description: _f$description,
    #twitter: _f$twitter,
    #mangaUpdates: _f$mangaUpdates,
    #focusedLanguage: _f$focusedLanguage,
    #locked: _f$locked,
    #official: _f$official,
    #verified: _f$verified,
    #inactive: _f$inactive,
    #exLicensed: _f$exLicensed,
    #publishDelay: _f$publishDelay,
    #version: _f$version,
    #createdAt: _f$createdAt,
    #updatedAt: _f$updatedAt,
  };

  static ScanlationGroupAttributes _instantiate(DecodingData data) {
    return ScanlationGroupAttributes(
        name: data.dec(_f$name),
        altNames: data.dec(_f$altNames),
        website: data.dec(_f$website),
        ircServer: data.dec(_f$ircServer),
        ircChannel: data.dec(_f$ircChannel),
        discord: data.dec(_f$discord),
        contactEmail: data.dec(_f$contactEmail),
        description: data.dec(_f$description),
        twitter: data.dec(_f$twitter),
        mangaUpdates: data.dec(_f$mangaUpdates),
        focusedLanguage: data.dec(_f$focusedLanguage),
        locked: data.dec(_f$locked),
        official: data.dec(_f$official),
        verified: data.dec(_f$verified),
        inactive: data.dec(_f$inactive),
        exLicensed: data.dec(_f$exLicensed),
        publishDelay: data.dec(_f$publishDelay),
        version: data.dec(_f$version),
        createdAt: data.dec(_f$createdAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static ScanlationGroupAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScanlationGroupAttributes>(map);
  }

  static ScanlationGroupAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<ScanlationGroupAttributes>(json);
  }
}

mixin ScanlationGroupAttributesMappable {
  String toJson() {
    return ScanlationGroupAttributesMapper.ensureInitialized()
        .encodeJson<ScanlationGroupAttributes>(
            this as ScanlationGroupAttributes);
  }

  Map<String, dynamic> toMap() {
    return ScanlationGroupAttributesMapper.ensureInitialized()
        .encodeMap<ScanlationGroupAttributes>(
            this as ScanlationGroupAttributes);
  }

  ScanlationGroupAttributesCopyWith<ScanlationGroupAttributes,
          ScanlationGroupAttributes, ScanlationGroupAttributes>
      get copyWith => _ScanlationGroupAttributesCopyWithImpl<
              ScanlationGroupAttributes, ScanlationGroupAttributes>(
          this as ScanlationGroupAttributes, $identity, $identity);
  @override
  String toString() {
    return ScanlationGroupAttributesMapper.ensureInitialized()
        .stringifyValue(this as ScanlationGroupAttributes);
  }

  @override
  bool operator ==(Object other) {
    return ScanlationGroupAttributesMapper.ensureInitialized()
        .equalsValue(this as ScanlationGroupAttributes, other);
  }

  @override
  int get hashCode {
    return ScanlationGroupAttributesMapper.ensureInitialized()
        .hashValue(this as ScanlationGroupAttributes);
  }
}

extension ScanlationGroupAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScanlationGroupAttributes, $Out> {
  ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes, $Out>
      get $asScanlationGroupAttributes => $base.as((v, t, t2) =>
          _ScanlationGroupAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ScanlationGroupAttributesCopyWith<
    $R,
    $In extends ScanlationGroupAttributes,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Map<String, String>,
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>
      get altNames;
  $R call(
      {String? name,
      List<Map<String, String>>? altNames,
      String? website,
      String? ircServer,
      String? ircChannel,
      String? discord,
      String? contactEmail,
      String? description,
      String? twitter,
      String? mangaUpdates,
      String? focusedLanguage,
      bool? locked,
      bool? official,
      bool? verified,
      bool? inactive,
      bool? exLicensed,
      String? publishDelay,
      int? version,
      DateTime? createdAt,
      DateTime? updatedAt});
  ScanlationGroupAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ScanlationGroupAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScanlationGroupAttributes, $Out>
    implements
        ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes, $Out> {
  _ScanlationGroupAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScanlationGroupAttributes> $mapper =
      ScanlationGroupAttributesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Map<String, String>,
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>
      get altNames => ListCopyWith($value.altNames,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(altNames: v));
  @override
  $R call(
          {String? name,
          List<Map<String, String>>? altNames,
          Object? website = $none,
          Object? ircServer = $none,
          Object? ircChannel = $none,
          Object? discord = $none,
          Object? contactEmail = $none,
          Object? description = $none,
          Object? twitter = $none,
          Object? mangaUpdates = $none,
          Object? focusedLanguage = $none,
          bool? locked,
          bool? official,
          bool? verified,
          bool? inactive,
          bool? exLicensed,
          String? publishDelay,
          int? version,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (altNames != null) #altNames: altNames,
        if (website != $none) #website: website,
        if (ircServer != $none) #ircServer: ircServer,
        if (ircChannel != $none) #ircChannel: ircChannel,
        if (discord != $none) #discord: discord,
        if (contactEmail != $none) #contactEmail: contactEmail,
        if (description != $none) #description: description,
        if (twitter != $none) #twitter: twitter,
        if (mangaUpdates != $none) #mangaUpdates: mangaUpdates,
        if (focusedLanguage != $none) #focusedLanguage: focusedLanguage,
        if (locked != null) #locked: locked,
        if (official != null) #official: official,
        if (verified != null) #verified: verified,
        if (inactive != null) #inactive: inactive,
        if (exLicensed != null) #exLicensed: exLicensed,
        if (publishDelay != null) #publishDelay: publishDelay,
        if (version != null) #version: version,
        if (createdAt != null) #createdAt: createdAt,
        if (updatedAt != null) #updatedAt: updatedAt
      }));
  @override
  ScanlationGroupAttributes $make(
          CopyWithData data) =>
      ScanlationGroupAttributes(
          name: data.get(#name, or: $value.name),
          altNames: data.get(#altNames, or: $value.altNames),
          website: data.get(#website, or: $value.website),
          ircServer: data.get(#ircServer, or: $value.ircServer),
          ircChannel: data.get(#ircChannel, or: $value.ircChannel),
          discord: data.get(#discord, or: $value.discord),
          contactEmail: data.get(#contactEmail, or: $value.contactEmail),
          description: data.get(#description, or: $value.description),
          twitter: data.get(#twitter, or: $value.twitter),
          mangaUpdates: data.get(#mangaUpdates, or: $value.mangaUpdates),
          focusedLanguage:
              data.get(#focusedLanguage, or: $value.focusedLanguage),
          locked: data.get(#locked, or: $value.locked),
          official: data.get(#official, or: $value.official),
          verified: data.get(#verified, or: $value.verified),
          inactive: data.get(#inactive, or: $value.inactive),
          exLicensed: data.get(#exLicensed, or: $value.exLicensed),
          publishDelay: data.get(#publishDelay, or: $value.publishDelay),
          version: data.get(#version, or: $value.version),
          createdAt: data.get(#createdAt, or: $value.createdAt),
          updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  ScanlationGroupAttributesCopyWith<$R2, ScanlationGroupAttributes, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ScanlationGroupAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserAttributesMapper extends ClassMapperBase<UserAttributes> {
  UserAttributesMapper._();

  static UserAttributesMapper? _instance;
  static UserAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserAttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'UserAttributes';

  static String _$username(UserAttributes v) => v.username;
  static const Field<UserAttributes, String> _f$username =
      Field('username', _$username);
  static List<String> _$roles(UserAttributes v) => v.roles;
  static const Field<UserAttributes, List<String>> _f$roles =
      Field('roles', _$roles);
  static int _$version(UserAttributes v) => v.version;
  static const Field<UserAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<UserAttributes> fields = const {
    #username: _f$username,
    #roles: _f$roles,
    #version: _f$version,
  };

  static UserAttributes _instantiate(DecodingData data) {
    return UserAttributes(
        username: data.dec(_f$username),
        roles: data.dec(_f$roles),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static UserAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserAttributes>(map);
  }

  static UserAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<UserAttributes>(json);
  }
}

mixin UserAttributesMappable {
  String toJson() {
    return UserAttributesMapper.ensureInitialized()
        .encodeJson<UserAttributes>(this as UserAttributes);
  }

  Map<String, dynamic> toMap() {
    return UserAttributesMapper.ensureInitialized()
        .encodeMap<UserAttributes>(this as UserAttributes);
  }

  UserAttributesCopyWith<UserAttributes, UserAttributes, UserAttributes>
      get copyWith =>
          _UserAttributesCopyWithImpl<UserAttributes, UserAttributes>(
              this as UserAttributes, $identity, $identity);
  @override
  String toString() {
    return UserAttributesMapper.ensureInitialized()
        .stringifyValue(this as UserAttributes);
  }

  @override
  bool operator ==(Object other) {
    return UserAttributesMapper.ensureInitialized()
        .equalsValue(this as UserAttributes, other);
  }

  @override
  int get hashCode {
    return UserAttributesMapper.ensureInitialized()
        .hashValue(this as UserAttributes);
  }
}

extension UserAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserAttributes, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, $Out> get $asUserAttributes =>
      $base.as((v, t, t2) => _UserAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserAttributesCopyWith<$R, $In extends UserAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get roles;
  $R call({String? username, List<String>? roles, int? version});
  UserAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserAttributes, $Out>
    implements UserAttributesCopyWith<$R, UserAttributes, $Out> {
  _UserAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserAttributes> $mapper =
      UserAttributesMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get roles =>
      ListCopyWith($value.roles, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(roles: v));
  @override
  $R call({String? username, List<String>? roles, int? version}) =>
      $apply(FieldCopyWithData({
        if (username != null) #username: username,
        if (roles != null) #roles: roles,
        if (version != null) #version: version
      }));
  @override
  UserAttributes $make(CopyWithData data) => UserAttributes(
      username: data.get(#username, or: $value.username),
      roles: data.get(#roles, or: $value.roles),
      version: data.get(#version, or: $value.version));

  @override
  UserAttributesCopyWith<$R2, UserAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ReasonAttributesMapper extends ClassMapperBase<ReasonAttributes> {
  ReasonAttributesMapper._();

  static ReasonAttributesMapper? _instance;
  static ReasonAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReasonAttributesMapper._());
      ReasonCategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ReasonAttributes';

  static Map<String, String> _$reason(ReasonAttributes v) => v.reason;
  static const Field<ReasonAttributes, Map<String, String>> _f$reason =
      Field('reason', _$reason);
  static bool _$detailsRequired(ReasonAttributes v) => v.detailsRequired;
  static const Field<ReasonAttributes, bool> _f$detailsRequired =
      Field('detailsRequired', _$detailsRequired);
  static ReasonCategory _$category(ReasonAttributes v) => v.category;
  static const Field<ReasonAttributes, ReasonCategory> _f$category =
      Field('category', _$category);
  static int _$version(ReasonAttributes v) => v.version;
  static const Field<ReasonAttributes, int> _f$version =
      Field('version', _$version);

  @override
  final MappableFields<ReasonAttributes> fields = const {
    #reason: _f$reason,
    #detailsRequired: _f$detailsRequired,
    #category: _f$category,
    #version: _f$version,
  };

  static ReasonAttributes _instantiate(DecodingData data) {
    return ReasonAttributes(
        reason: data.dec(_f$reason),
        detailsRequired: data.dec(_f$detailsRequired),
        category: data.dec(_f$category),
        version: data.dec(_f$version));
  }

  @override
  final Function instantiate = _instantiate;

  static ReasonAttributes fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ReasonAttributes>(map);
  }

  static ReasonAttributes fromJson(String json) {
    return ensureInitialized().decodeJson<ReasonAttributes>(json);
  }
}

mixin ReasonAttributesMappable {
  String toJson() {
    return ReasonAttributesMapper.ensureInitialized()
        .encodeJson<ReasonAttributes>(this as ReasonAttributes);
  }

  Map<String, dynamic> toMap() {
    return ReasonAttributesMapper.ensureInitialized()
        .encodeMap<ReasonAttributes>(this as ReasonAttributes);
  }

  ReasonAttributesCopyWith<ReasonAttributes, ReasonAttributes, ReasonAttributes>
      get copyWith =>
          _ReasonAttributesCopyWithImpl<ReasonAttributes, ReasonAttributes>(
              this as ReasonAttributes, $identity, $identity);
  @override
  String toString() {
    return ReasonAttributesMapper.ensureInitialized()
        .stringifyValue(this as ReasonAttributes);
  }

  @override
  bool operator ==(Object other) {
    return ReasonAttributesMapper.ensureInitialized()
        .equalsValue(this as ReasonAttributes, other);
  }

  @override
  int get hashCode {
    return ReasonAttributesMapper.ensureInitialized()
        .hashValue(this as ReasonAttributes);
  }
}

extension ReasonAttributesValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ReasonAttributes, $Out> {
  ReasonAttributesCopyWith<$R, ReasonAttributes, $Out>
      get $asReasonAttributes => $base
          .as((v, t, t2) => _ReasonAttributesCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ReasonAttributesCopyWith<$R, $In extends ReasonAttributes, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get reason;
  $R call(
      {Map<String, String>? reason,
      bool? detailsRequired,
      ReasonCategory? category,
      int? version});
  ReasonAttributesCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ReasonAttributesCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ReasonAttributes, $Out>
    implements ReasonAttributesCopyWith<$R, ReasonAttributes, $Out> {
  _ReasonAttributesCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ReasonAttributes> $mapper =
      ReasonAttributesMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>
      get reason => MapCopyWith($value.reason,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(reason: v));
  @override
  $R call(
          {Map<String, String>? reason,
          bool? detailsRequired,
          ReasonCategory? category,
          int? version}) =>
      $apply(FieldCopyWithData({
        if (reason != null) #reason: reason,
        if (detailsRequired != null) #detailsRequired: detailsRequired,
        if (category != null) #category: category,
        if (version != null) #version: version
      }));
  @override
  ReasonAttributes $make(CopyWithData data) => ReasonAttributes(
      reason: data.get(#reason, or: $value.reason),
      detailsRequired: data.get(#detailsRequired, or: $value.detailsRequired),
      category: data.get(#category, or: $value.category),
      version: data.get(#version, or: $value.version));

  @override
  ReasonAttributesCopyWith<$R2, ReasonAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ReasonAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
