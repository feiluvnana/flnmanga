// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'attribute.dart';

class MangaAttributesMapper extends ClassMapperBase<MangaAttributes> {
  MangaAttributesMapper._();

  static MangaAttributesMapper? _instance;
  static MangaAttributesMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaAttributesMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MangaAttributes';

  static Map<String, String> _$title(MangaAttributes v) => v.title;
  static const Field<MangaAttributes, Map<String, String>> _f$title =
      Field('title', _$title);
  static List<Map<String, String>>? _$altTitles(MangaAttributes v) =>
      v.altTitles;
  static const Field<MangaAttributes, List<Map<String, String>>> _f$altTitles =
      Field('altTitles', _$altTitles, opt: true);
  static Map<String, String>? _$description(MangaAttributes v) => v.description;
  static const Field<MangaAttributes, Map<String, String>> _f$description =
      Field('description', _$description, opt: true);
  static String _$status(MangaAttributes v) => v.status;
  static const Field<MangaAttributes, String> _f$status =
      Field('status', _$status);
  static int? _$year(MangaAttributes v) => v.year;
  static const Field<MangaAttributes, int> _f$year =
      Field('year', _$year, opt: true);
  static String _$contentRating(MangaAttributes v) => v.contentRating;
  static const Field<MangaAttributes, String> _f$contentRating =
      Field('contentRating', _$contentRating);
  static List<Map<String, dynamic>>? _$tags(MangaAttributes v) => v.tags;
  static const Field<MangaAttributes, List<Map<String, dynamic>>> _f$tags =
      Field('tags', _$tags, opt: true);

  @override
  final MappableFields<MangaAttributes> fields = const {
    #title: _f$title,
    #altTitles: _f$altTitles,
    #description: _f$description,
    #status: _f$status,
    #year: _f$year,
    #contentRating: _f$contentRating,
    #tags: _f$tags,
  };

  static MangaAttributes _instantiate(DecodingData data) {
    return MangaAttributes(
        title: data.dec(_f$title),
        altTitles: data.dec(_f$altTitles),
        description: data.dec(_f$description),
        status: data.dec(_f$status),
        year: data.dec(_f$year),
        contentRating: data.dec(_f$contentRating),
        tags: data.dec(_f$tags));
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
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>?
      get altTitles;
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get description;
  ListCopyWith<$R, Map<String, dynamic>,
      ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>>? get tags;
  $R call(
      {Map<String, String>? title,
      List<Map<String, String>>? altTitles,
      Map<String, String>? description,
      String? status,
      int? year,
      String? contentRating,
      List<Map<String, dynamic>>? tags});
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
          ObjectCopyWith<$R, Map<String, String>, Map<String, String>>>?
      get altTitles => $value.altTitles != null
          ? ListCopyWith(
              $value.altTitles!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(altTitles: v))
          : null;
  @override
  MapCopyWith<$R, String, String, ObjectCopyWith<$R, String, String>>?
      get description => $value.description != null
          ? MapCopyWith(
              $value.description!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(description: v))
          : null;
  @override
  ListCopyWith<$R, Map<String, dynamic>,
          ObjectCopyWith<$R, Map<String, dynamic>, Map<String, dynamic>>>?
      get tags => $value.tags != null
          ? ListCopyWith($value.tags!,
              (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(tags: v))
          : null;
  @override
  $R call(
          {Map<String, String>? title,
          Object? altTitles = $none,
          Object? description = $none,
          String? status,
          Object? year = $none,
          String? contentRating,
          Object? tags = $none}) =>
      $apply(FieldCopyWithData({
        if (title != null) #title: title,
        if (altTitles != $none) #altTitles: altTitles,
        if (description != $none) #description: description,
        if (status != null) #status: status,
        if (year != $none) #year: year,
        if (contentRating != null) #contentRating: contentRating,
        if (tags != $none) #tags: tags
      }));
  @override
  MangaAttributes $make(CopyWithData data) => MangaAttributes(
      title: data.get(#title, or: $value.title),
      altTitles: data.get(#altTitles, or: $value.altTitles),
      description: data.get(#description, or: $value.description),
      status: data.get(#status, or: $value.status),
      year: data.get(#year, or: $value.year),
      contentRating: data.get(#contentRating, or: $value.contentRating),
      tags: data.get(#tags, or: $value.tags));

  @override
  MangaAttributesCopyWith<$R2, MangaAttributes, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaAttributesCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
