// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'relationships.dart';

class RelationshipMapper extends ClassMapperBase<Relationship> {
  RelationshipMapper._();

  static RelationshipMapper? _instance;
  static RelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelationshipMapper._());
      MapperContainer.globals.useAll([UuidMapper()]);
      AuthorRelationshipMapper.ensureInitialized();
      CoverArtRelationshipMapper.ensureInitialized();
      MangaRelationshipMapper.ensureInitialized();
      TagRelationshipMapper.ensureInitialized();
      ScanlationGroupRelationshipMapper.ensureInitialized();
      UserRelationshipMapper.ensureInitialized();
      CreatorRelationshipMapper.ensureInitialized();
      ArtistRelationshipMapper.ensureInitialized();
      LeaderRelationshipMapper.ensureInitialized();
      MemberRelationshipMapper.ensureInitialized();
      DefaultRelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Relationship';

  static Uuid _$id(Relationship v) => v.id;
  static const Field<Relationship, Uuid> _f$id = Field('id', _$id);

  @override
  final MappableFields<Relationship> fields = const {
    #id: _f$id,
  };

  static Relationship _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Relationship', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Relationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Relationship>(map);
  }

  static Relationship fromJson(String json) {
    return ensureInitialized().decodeJson<Relationship>(json);
  }
}

mixin RelationshipMappable {
  String toJson();
  Map<String, dynamic> toMap();
  RelationshipCopyWith<Relationship, Relationship, Relationship> get copyWith;
}

abstract class RelationshipCopyWith<$R, $In extends Relationship, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uuid? id});
  RelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AuthorRelationshipMapper extends SubClassMapperBase<AuthorRelationship> {
  AuthorRelationshipMapper._();

  static AuthorRelationshipMapper? _instance;
  static AuthorRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthorRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      AuthorAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthorRelationship';

  static Uuid _$id(AuthorRelationship v) => v.id;
  static const Field<AuthorRelationship, Uuid> _f$id = Field('id', _$id);
  static AuthorAttributes? _$attributes(AuthorRelationship v) => v.attributes;
  static const Field<AuthorRelationship, AuthorAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<AuthorRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = AuthorRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static AuthorRelationship _instantiate(DecodingData data) {
    return AuthorRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthorRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthorRelationship>(map);
  }

  static AuthorRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<AuthorRelationship>(json);
  }
}

mixin AuthorRelationshipMappable {
  String toJson() {
    return AuthorRelationshipMapper.ensureInitialized()
        .encodeJson<AuthorRelationship>(this as AuthorRelationship);
  }

  Map<String, dynamic> toMap() {
    return AuthorRelationshipMapper.ensureInitialized()
        .encodeMap<AuthorRelationship>(this as AuthorRelationship);
  }

  AuthorRelationshipCopyWith<AuthorRelationship, AuthorRelationship,
          AuthorRelationship>
      get copyWith => _AuthorRelationshipCopyWithImpl<AuthorRelationship,
          AuthorRelationship>(this as AuthorRelationship, $identity, $identity);
  @override
  String toString() {
    return AuthorRelationshipMapper.ensureInitialized()
        .stringifyValue(this as AuthorRelationship);
  }

  @override
  bool operator ==(Object other) {
    return AuthorRelationshipMapper.ensureInitialized()
        .equalsValue(this as AuthorRelationship, other);
  }

  @override
  int get hashCode {
    return AuthorRelationshipMapper.ensureInitialized()
        .hashValue(this as AuthorRelationship);
  }
}

extension AuthorRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthorRelationship, $Out> {
  AuthorRelationshipCopyWith<$R, AuthorRelationship, $Out>
      get $asAuthorRelationship => $base.as(
          (v, t, t2) => _AuthorRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthorRelationshipCopyWith<$R, $In extends AuthorRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>?
      get attributes;
  @override
  $R call({Uuid? id, AuthorAttributes? attributes});
  AuthorRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AuthorRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthorRelationship, $Out>
    implements AuthorRelationshipCopyWith<$R, AuthorRelationship, $Out> {
  _AuthorRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthorRelationship> $mapper =
      AuthorRelationshipMapper.ensureInitialized();
  @override
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>?
      get attributes =>
          $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  AuthorRelationship $make(CopyWithData data) => AuthorRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  AuthorRelationshipCopyWith<$R2, AuthorRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthorRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CoverArtRelationshipMapper
    extends SubClassMapperBase<CoverArtRelationship> {
  CoverArtRelationshipMapper._();

  static CoverArtRelationshipMapper? _instance;
  static CoverArtRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CoverArtRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      CoverArtAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CoverArtRelationship';

  static Uuid _$id(CoverArtRelationship v) => v.id;
  static const Field<CoverArtRelationship, Uuid> _f$id = Field('id', _$id);
  static CoverArtAttributes? _$attributes(CoverArtRelationship v) =>
      v.attributes;
  static const Field<CoverArtRelationship, CoverArtAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<CoverArtRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = CoverArtRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static CoverArtRelationship _instantiate(DecodingData data) {
    return CoverArtRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static CoverArtRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CoverArtRelationship>(map);
  }

  static CoverArtRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<CoverArtRelationship>(json);
  }
}

mixin CoverArtRelationshipMappable {
  String toJson() {
    return CoverArtRelationshipMapper.ensureInitialized()
        .encodeJson<CoverArtRelationship>(this as CoverArtRelationship);
  }

  Map<String, dynamic> toMap() {
    return CoverArtRelationshipMapper.ensureInitialized()
        .encodeMap<CoverArtRelationship>(this as CoverArtRelationship);
  }

  CoverArtRelationshipCopyWith<CoverArtRelationship, CoverArtRelationship,
      CoverArtRelationship> get copyWith => _CoverArtRelationshipCopyWithImpl<
          CoverArtRelationship, CoverArtRelationship>(
      this as CoverArtRelationship, $identity, $identity);
  @override
  String toString() {
    return CoverArtRelationshipMapper.ensureInitialized()
        .stringifyValue(this as CoverArtRelationship);
  }

  @override
  bool operator ==(Object other) {
    return CoverArtRelationshipMapper.ensureInitialized()
        .equalsValue(this as CoverArtRelationship, other);
  }

  @override
  int get hashCode {
    return CoverArtRelationshipMapper.ensureInitialized()
        .hashValue(this as CoverArtRelationship);
  }
}

extension CoverArtRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CoverArtRelationship, $Out> {
  CoverArtRelationshipCopyWith<$R, CoverArtRelationship, $Out>
      get $asCoverArtRelationship => $base.as(
          (v, t, t2) => _CoverArtRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CoverArtRelationshipCopyWith<
    $R,
    $In extends CoverArtRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  CoverArtAttributesCopyWith<$R, CoverArtAttributes, CoverArtAttributes>?
      get attributes;
  @override
  $R call({Uuid? id, CoverArtAttributes? attributes});
  CoverArtRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CoverArtRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CoverArtRelationship, $Out>
    implements CoverArtRelationshipCopyWith<$R, CoverArtRelationship, $Out> {
  _CoverArtRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CoverArtRelationship> $mapper =
      CoverArtRelationshipMapper.ensureInitialized();
  @override
  CoverArtAttributesCopyWith<$R, CoverArtAttributes, CoverArtAttributes>?
      get attributes =>
          $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  CoverArtRelationship $make(CopyWithData data) => CoverArtRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  CoverArtRelationshipCopyWith<$R2, CoverArtRelationship, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CoverArtRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaRelationshipMapper extends SubClassMapperBase<MangaRelationship> {
  MangaRelationshipMapper._();

  static MangaRelationshipMapper? _instance;
  static MangaRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      MangaRelatedMapper.ensureInitialized();
      MangaAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaRelationship';

  static Uuid _$id(MangaRelationship v) => v.id;
  static const Field<MangaRelationship, Uuid> _f$id = Field('id', _$id);
  static MangaRelated? _$related(MangaRelationship v) => v.related;
  static const Field<MangaRelationship, MangaRelated> _f$related =
      Field('related', _$related, opt: true);
  static MangaAttributes? _$attributes(MangaRelationship v) => v.attributes;
  static const Field<MangaRelationship, MangaAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<MangaRelationship> fields = const {
    #id: _f$id,
    #related: _f$related,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MangaRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static MangaRelationship _instantiate(DecodingData data) {
    return MangaRelationship(
        id: data.dec(_f$id),
        related: data.dec(_f$related),
        attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaRelationship>(map);
  }

  static MangaRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<MangaRelationship>(json);
  }
}

mixin MangaRelationshipMappable {
  String toJson() {
    return MangaRelationshipMapper.ensureInitialized()
        .encodeJson<MangaRelationship>(this as MangaRelationship);
  }

  Map<String, dynamic> toMap() {
    return MangaRelationshipMapper.ensureInitialized()
        .encodeMap<MangaRelationship>(this as MangaRelationship);
  }

  MangaRelationshipCopyWith<MangaRelationship, MangaRelationship,
          MangaRelationship>
      get copyWith =>
          _MangaRelationshipCopyWithImpl<MangaRelationship, MangaRelationship>(
              this as MangaRelationship, $identity, $identity);
  @override
  String toString() {
    return MangaRelationshipMapper.ensureInitialized()
        .stringifyValue(this as MangaRelationship);
  }

  @override
  bool operator ==(Object other) {
    return MangaRelationshipMapper.ensureInitialized()
        .equalsValue(this as MangaRelationship, other);
  }

  @override
  int get hashCode {
    return MangaRelationshipMapper.ensureInitialized()
        .hashValue(this as MangaRelationship);
  }
}

extension MangaRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaRelationship, $Out> {
  MangaRelationshipCopyWith<$R, MangaRelationship, $Out>
      get $asMangaRelationship => $base
          .as((v, t, t2) => _MangaRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaRelationshipCopyWith<$R, $In extends MangaRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  MangaAttributesCopyWith<$R, MangaAttributes, MangaAttributes>? get attributes;
  @override
  $R call({Uuid? id, MangaRelated? related, MangaAttributes? attributes});
  MangaRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaRelationship, $Out>
    implements MangaRelationshipCopyWith<$R, MangaRelationship, $Out> {
  _MangaRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaRelationship> $mapper =
      MangaRelationshipMapper.ensureInitialized();
  @override
  MangaAttributesCopyWith<$R, MangaAttributes, MangaAttributes>?
      get attributes =>
          $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? related = $none, Object? attributes = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (related != $none) #related: related,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  MangaRelationship $make(CopyWithData data) => MangaRelationship(
      id: data.get(#id, or: $value.id),
      related: data.get(#related, or: $value.related),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  MangaRelationshipCopyWith<$R2, MangaRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TagRelationshipMapper extends SubClassMapperBase<TagRelationship> {
  TagRelationshipMapper._();

  static TagRelationshipMapper? _instance;
  static TagRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      TagAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TagRelationship';

  static Uuid _$id(TagRelationship v) => v.id;
  static const Field<TagRelationship, Uuid> _f$id = Field('id', _$id);
  static TagAttributes? _$attributes(TagRelationship v) => v.attributes;
  static const Field<TagRelationship, TagAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<TagRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = TagRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static TagRelationship _instantiate(DecodingData data) {
    return TagRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static TagRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagRelationship>(map);
  }

  static TagRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<TagRelationship>(json);
  }
}

mixin TagRelationshipMappable {
  String toJson() {
    return TagRelationshipMapper.ensureInitialized()
        .encodeJson<TagRelationship>(this as TagRelationship);
  }

  Map<String, dynamic> toMap() {
    return TagRelationshipMapper.ensureInitialized()
        .encodeMap<TagRelationship>(this as TagRelationship);
  }

  TagRelationshipCopyWith<TagRelationship, TagRelationship, TagRelationship>
      get copyWith =>
          _TagRelationshipCopyWithImpl<TagRelationship, TagRelationship>(
              this as TagRelationship, $identity, $identity);
  @override
  String toString() {
    return TagRelationshipMapper.ensureInitialized()
        .stringifyValue(this as TagRelationship);
  }

  @override
  bool operator ==(Object other) {
    return TagRelationshipMapper.ensureInitialized()
        .equalsValue(this as TagRelationship, other);
  }

  @override
  int get hashCode {
    return TagRelationshipMapper.ensureInitialized()
        .hashValue(this as TagRelationship);
  }
}

extension TagRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TagRelationship, $Out> {
  TagRelationshipCopyWith<$R, TagRelationship, $Out> get $asTagRelationship =>
      $base.as((v, t, t2) => _TagRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagRelationshipCopyWith<$R, $In extends TagRelationship, $Out>
    implements RelationshipCopyWith<$R, $In, $Out> {
  TagAttributesCopyWith<$R, TagAttributes, TagAttributes>? get attributes;
  @override
  $R call({Uuid? id, TagAttributes? attributes});
  TagRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TagRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagRelationship, $Out>
    implements TagRelationshipCopyWith<$R, TagRelationship, $Out> {
  _TagRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagRelationship> $mapper =
      TagRelationshipMapper.ensureInitialized();
  @override
  TagAttributesCopyWith<$R, TagAttributes, TagAttributes>? get attributes =>
      $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  TagRelationship $make(CopyWithData data) => TagRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  TagRelationshipCopyWith<$R2, TagRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ScanlationGroupRelationshipMapper
    extends SubClassMapperBase<ScanlationGroupRelationship> {
  ScanlationGroupRelationshipMapper._();

  static ScanlationGroupRelationshipMapper? _instance;
  static ScanlationGroupRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ScanlationGroupRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      ScanlationGroupAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ScanlationGroupRelationship';

  static Uuid _$id(ScanlationGroupRelationship v) => v.id;
  static const Field<ScanlationGroupRelationship, Uuid> _f$id =
      Field('id', _$id);
  static ScanlationGroupAttributes? _$attributes(
          ScanlationGroupRelationship v) =>
      v.attributes;
  static const Field<ScanlationGroupRelationship, ScanlationGroupAttributes>
      _f$attributes = Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<ScanlationGroupRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = ScanlationGroupRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static ScanlationGroupRelationship _instantiate(DecodingData data) {
    return ScanlationGroupRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static ScanlationGroupRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScanlationGroupRelationship>(map);
  }

  static ScanlationGroupRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<ScanlationGroupRelationship>(json);
  }
}

mixin ScanlationGroupRelationshipMappable {
  String toJson() {
    return ScanlationGroupRelationshipMapper.ensureInitialized()
        .encodeJson<ScanlationGroupRelationship>(
            this as ScanlationGroupRelationship);
  }

  Map<String, dynamic> toMap() {
    return ScanlationGroupRelationshipMapper.ensureInitialized()
        .encodeMap<ScanlationGroupRelationship>(
            this as ScanlationGroupRelationship);
  }

  ScanlationGroupRelationshipCopyWith<ScanlationGroupRelationship,
          ScanlationGroupRelationship, ScanlationGroupRelationship>
      get copyWith => _ScanlationGroupRelationshipCopyWithImpl<
              ScanlationGroupRelationship, ScanlationGroupRelationship>(
          this as ScanlationGroupRelationship, $identity, $identity);
  @override
  String toString() {
    return ScanlationGroupRelationshipMapper.ensureInitialized()
        .stringifyValue(this as ScanlationGroupRelationship);
  }

  @override
  bool operator ==(Object other) {
    return ScanlationGroupRelationshipMapper.ensureInitialized()
        .equalsValue(this as ScanlationGroupRelationship, other);
  }

  @override
  int get hashCode {
    return ScanlationGroupRelationshipMapper.ensureInitialized()
        .hashValue(this as ScanlationGroupRelationship);
  }
}

extension ScanlationGroupRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScanlationGroupRelationship, $Out> {
  ScanlationGroupRelationshipCopyWith<$R, ScanlationGroupRelationship, $Out>
      get $asScanlationGroupRelationship => $base.as((v, t, t2) =>
          _ScanlationGroupRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ScanlationGroupRelationshipCopyWith<
    $R,
    $In extends ScanlationGroupRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes,
      ScanlationGroupAttributes>? get attributes;
  @override
  $R call({Uuid? id, ScanlationGroupAttributes? attributes});
  ScanlationGroupRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ScanlationGroupRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScanlationGroupRelationship, $Out>
    implements
        ScanlationGroupRelationshipCopyWith<$R, ScanlationGroupRelationship,
            $Out> {
  _ScanlationGroupRelationshipCopyWithImpl(
      super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScanlationGroupRelationship> $mapper =
      ScanlationGroupRelationshipMapper.ensureInitialized();
  @override
  ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes,
          ScanlationGroupAttributes>?
      get attributes =>
          $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  ScanlationGroupRelationship $make(CopyWithData data) =>
      ScanlationGroupRelationship(
          id: data.get(#id, or: $value.id),
          attributes: data.get(#attributes, or: $value.attributes));

  @override
  ScanlationGroupRelationshipCopyWith<$R2, ScanlationGroupRelationship, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ScanlationGroupRelationshipCopyWithImpl<$R2, $Out2>(
              $value, $cast, t);
}

class UserRelationshipMapper extends SubClassMapperBase<UserRelationship> {
  UserRelationshipMapper._();

  static UserRelationshipMapper? _instance;
  static UserRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      UserAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserRelationship';

  static Uuid _$id(UserRelationship v) => v.id;
  static const Field<UserRelationship, Uuid> _f$id = Field('id', _$id);
  static UserAttributes? _$attributes(UserRelationship v) => v.attributes;
  static const Field<UserRelationship, UserAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<UserRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = UserRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static UserRelationship _instantiate(DecodingData data) {
    return UserRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static UserRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserRelationship>(map);
  }

  static UserRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<UserRelationship>(json);
  }
}

mixin UserRelationshipMappable {
  String toJson() {
    return UserRelationshipMapper.ensureInitialized()
        .encodeJson<UserRelationship>(this as UserRelationship);
  }

  Map<String, dynamic> toMap() {
    return UserRelationshipMapper.ensureInitialized()
        .encodeMap<UserRelationship>(this as UserRelationship);
  }

  UserRelationshipCopyWith<UserRelationship, UserRelationship, UserRelationship>
      get copyWith =>
          _UserRelationshipCopyWithImpl<UserRelationship, UserRelationship>(
              this as UserRelationship, $identity, $identity);
  @override
  String toString() {
    return UserRelationshipMapper.ensureInitialized()
        .stringifyValue(this as UserRelationship);
  }

  @override
  bool operator ==(Object other) {
    return UserRelationshipMapper.ensureInitialized()
        .equalsValue(this as UserRelationship, other);
  }

  @override
  int get hashCode {
    return UserRelationshipMapper.ensureInitialized()
        .hashValue(this as UserRelationship);
  }
}

extension UserRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserRelationship, $Out> {
  UserRelationshipCopyWith<$R, UserRelationship, $Out>
      get $asUserRelationship => $base
          .as((v, t, t2) => _UserRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserRelationshipCopyWith<$R, $In extends UserRelationship, $Out>
    implements RelationshipCopyWith<$R, $In, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes;
  @override
  $R call({Uuid? id, UserAttributes? attributes});
  UserRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserRelationship, $Out>
    implements UserRelationshipCopyWith<$R, UserRelationship, $Out> {
  _UserRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserRelationship> $mapper =
      UserRelationshipMapper.ensureInitialized();
  @override
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes =>
      $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  UserRelationship $make(CopyWithData data) => UserRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  UserRelationshipCopyWith<$R2, UserRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CreatorRelationshipMapper
    extends SubClassMapperBase<CreatorRelationship> {
  CreatorRelationshipMapper._();

  static CreatorRelationshipMapper? _instance;
  static CreatorRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CreatorRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      UserAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CreatorRelationship';

  static Uuid _$id(CreatorRelationship v) => v.id;
  static const Field<CreatorRelationship, Uuid> _f$id = Field('id', _$id);
  static UserAttributes? _$attributes(CreatorRelationship v) => v.attributes;
  static const Field<CreatorRelationship, UserAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<CreatorRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = CreatorRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static CreatorRelationship _instantiate(DecodingData data) {
    return CreatorRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static CreatorRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CreatorRelationship>(map);
  }

  static CreatorRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<CreatorRelationship>(json);
  }
}

mixin CreatorRelationshipMappable {
  String toJson() {
    return CreatorRelationshipMapper.ensureInitialized()
        .encodeJson<CreatorRelationship>(this as CreatorRelationship);
  }

  Map<String, dynamic> toMap() {
    return CreatorRelationshipMapper.ensureInitialized()
        .encodeMap<CreatorRelationship>(this as CreatorRelationship);
  }

  CreatorRelationshipCopyWith<CreatorRelationship, CreatorRelationship,
      CreatorRelationship> get copyWith => _CreatorRelationshipCopyWithImpl<
          CreatorRelationship, CreatorRelationship>(
      this as CreatorRelationship, $identity, $identity);
  @override
  String toString() {
    return CreatorRelationshipMapper.ensureInitialized()
        .stringifyValue(this as CreatorRelationship);
  }

  @override
  bool operator ==(Object other) {
    return CreatorRelationshipMapper.ensureInitialized()
        .equalsValue(this as CreatorRelationship, other);
  }

  @override
  int get hashCode {
    return CreatorRelationshipMapper.ensureInitialized()
        .hashValue(this as CreatorRelationship);
  }
}

extension CreatorRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CreatorRelationship, $Out> {
  CreatorRelationshipCopyWith<$R, CreatorRelationship, $Out>
      get $asCreatorRelationship => $base.as(
          (v, t, t2) => _CreatorRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CreatorRelationshipCopyWith<$R, $In extends CreatorRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes;
  @override
  $R call({Uuid? id, UserAttributes? attributes});
  CreatorRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CreatorRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CreatorRelationship, $Out>
    implements CreatorRelationshipCopyWith<$R, CreatorRelationship, $Out> {
  _CreatorRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CreatorRelationship> $mapper =
      CreatorRelationshipMapper.ensureInitialized();
  @override
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes =>
      $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  CreatorRelationship $make(CopyWithData data) => CreatorRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  CreatorRelationshipCopyWith<$R2, CreatorRelationship, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CreatorRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ArtistRelationshipMapper extends SubClassMapperBase<ArtistRelationship> {
  ArtistRelationshipMapper._();

  static ArtistRelationshipMapper? _instance;
  static ArtistRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArtistRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      AuthorAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ArtistRelationship';

  static Uuid _$id(ArtistRelationship v) => v.id;
  static const Field<ArtistRelationship, Uuid> _f$id = Field('id', _$id);
  static AuthorAttributes? _$attributes(ArtistRelationship v) => v.attributes;
  static const Field<ArtistRelationship, AuthorAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<ArtistRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = ArtistRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static ArtistRelationship _instantiate(DecodingData data) {
    return ArtistRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static ArtistRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArtistRelationship>(map);
  }

  static ArtistRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<ArtistRelationship>(json);
  }
}

mixin ArtistRelationshipMappable {
  String toJson() {
    return ArtistRelationshipMapper.ensureInitialized()
        .encodeJson<ArtistRelationship>(this as ArtistRelationship);
  }

  Map<String, dynamic> toMap() {
    return ArtistRelationshipMapper.ensureInitialized()
        .encodeMap<ArtistRelationship>(this as ArtistRelationship);
  }

  ArtistRelationshipCopyWith<ArtistRelationship, ArtistRelationship,
          ArtistRelationship>
      get copyWith => _ArtistRelationshipCopyWithImpl<ArtistRelationship,
          ArtistRelationship>(this as ArtistRelationship, $identity, $identity);
  @override
  String toString() {
    return ArtistRelationshipMapper.ensureInitialized()
        .stringifyValue(this as ArtistRelationship);
  }

  @override
  bool operator ==(Object other) {
    return ArtistRelationshipMapper.ensureInitialized()
        .equalsValue(this as ArtistRelationship, other);
  }

  @override
  int get hashCode {
    return ArtistRelationshipMapper.ensureInitialized()
        .hashValue(this as ArtistRelationship);
  }
}

extension ArtistRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArtistRelationship, $Out> {
  ArtistRelationshipCopyWith<$R, ArtistRelationship, $Out>
      get $asArtistRelationship => $base.as(
          (v, t, t2) => _ArtistRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ArtistRelationshipCopyWith<$R, $In extends ArtistRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>?
      get attributes;
  @override
  $R call({Uuid? id, AuthorAttributes? attributes});
  ArtistRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ArtistRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArtistRelationship, $Out>
    implements ArtistRelationshipCopyWith<$R, ArtistRelationship, $Out> {
  _ArtistRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArtistRelationship> $mapper =
      ArtistRelationshipMapper.ensureInitialized();
  @override
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>?
      get attributes =>
          $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  ArtistRelationship $make(CopyWithData data) => ArtistRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  ArtistRelationshipCopyWith<$R2, ArtistRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ArtistRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LeaderRelationshipMapper extends SubClassMapperBase<LeaderRelationship> {
  LeaderRelationshipMapper._();

  static LeaderRelationshipMapper? _instance;
  static LeaderRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LeaderRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      UserAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LeaderRelationship';

  static Uuid _$id(LeaderRelationship v) => v.id;
  static const Field<LeaderRelationship, Uuid> _f$id = Field('id', _$id);
  static UserAttributes? _$attributes(LeaderRelationship v) => v.attributes;
  static const Field<LeaderRelationship, UserAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<LeaderRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = LeaderRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static LeaderRelationship _instantiate(DecodingData data) {
    return LeaderRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static LeaderRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LeaderRelationship>(map);
  }

  static LeaderRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<LeaderRelationship>(json);
  }
}

mixin LeaderRelationshipMappable {
  String toJson() {
    return LeaderRelationshipMapper.ensureInitialized()
        .encodeJson<LeaderRelationship>(this as LeaderRelationship);
  }

  Map<String, dynamic> toMap() {
    return LeaderRelationshipMapper.ensureInitialized()
        .encodeMap<LeaderRelationship>(this as LeaderRelationship);
  }

  LeaderRelationshipCopyWith<LeaderRelationship, LeaderRelationship,
          LeaderRelationship>
      get copyWith => _LeaderRelationshipCopyWithImpl<LeaderRelationship,
          LeaderRelationship>(this as LeaderRelationship, $identity, $identity);
  @override
  String toString() {
    return LeaderRelationshipMapper.ensureInitialized()
        .stringifyValue(this as LeaderRelationship);
  }

  @override
  bool operator ==(Object other) {
    return LeaderRelationshipMapper.ensureInitialized()
        .equalsValue(this as LeaderRelationship, other);
  }

  @override
  int get hashCode {
    return LeaderRelationshipMapper.ensureInitialized()
        .hashValue(this as LeaderRelationship);
  }
}

extension LeaderRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LeaderRelationship, $Out> {
  LeaderRelationshipCopyWith<$R, LeaderRelationship, $Out>
      get $asLeaderRelationship => $base.as(
          (v, t, t2) => _LeaderRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LeaderRelationshipCopyWith<$R, $In extends LeaderRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes;
  @override
  $R call({Uuid? id, UserAttributes? attributes});
  LeaderRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LeaderRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LeaderRelationship, $Out>
    implements LeaderRelationshipCopyWith<$R, LeaderRelationship, $Out> {
  _LeaderRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LeaderRelationship> $mapper =
      LeaderRelationshipMapper.ensureInitialized();
  @override
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes =>
      $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  LeaderRelationship $make(CopyWithData data) => LeaderRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  LeaderRelationshipCopyWith<$R2, LeaderRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LeaderRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MemberRelationshipMapper extends SubClassMapperBase<MemberRelationship> {
  MemberRelationshipMapper._();

  static MemberRelationshipMapper? _instance;
  static MemberRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MemberRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      UserAttributesMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MemberRelationship';

  static Uuid _$id(MemberRelationship v) => v.id;
  static const Field<MemberRelationship, Uuid> _f$id = Field('id', _$id);
  static UserAttributes? _$attributes(MemberRelationship v) => v.attributes;
  static const Field<MemberRelationship, UserAttributes> _f$attributes =
      Field('attributes', _$attributes, opt: true);

  @override
  final MappableFields<MemberRelationship> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MemberRelationship.checkType;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static MemberRelationship _instantiate(DecodingData data) {
    return MemberRelationship(
        id: data.dec(_f$id), attributes: data.dec(_f$attributes));
  }

  @override
  final Function instantiate = _instantiate;

  static MemberRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MemberRelationship>(map);
  }

  static MemberRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<MemberRelationship>(json);
  }
}

mixin MemberRelationshipMappable {
  String toJson() {
    return MemberRelationshipMapper.ensureInitialized()
        .encodeJson<MemberRelationship>(this as MemberRelationship);
  }

  Map<String, dynamic> toMap() {
    return MemberRelationshipMapper.ensureInitialized()
        .encodeMap<MemberRelationship>(this as MemberRelationship);
  }

  MemberRelationshipCopyWith<MemberRelationship, MemberRelationship,
          MemberRelationship>
      get copyWith => _MemberRelationshipCopyWithImpl<MemberRelationship,
          MemberRelationship>(this as MemberRelationship, $identity, $identity);
  @override
  String toString() {
    return MemberRelationshipMapper.ensureInitialized()
        .stringifyValue(this as MemberRelationship);
  }

  @override
  bool operator ==(Object other) {
    return MemberRelationshipMapper.ensureInitialized()
        .equalsValue(this as MemberRelationship, other);
  }

  @override
  int get hashCode {
    return MemberRelationshipMapper.ensureInitialized()
        .hashValue(this as MemberRelationship);
  }
}

extension MemberRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MemberRelationship, $Out> {
  MemberRelationshipCopyWith<$R, MemberRelationship, $Out>
      get $asMemberRelationship => $base.as(
          (v, t, t2) => _MemberRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MemberRelationshipCopyWith<$R, $In extends MemberRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes;
  @override
  $R call({Uuid? id, UserAttributes? attributes});
  MemberRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MemberRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MemberRelationship, $Out>
    implements MemberRelationshipCopyWith<$R, MemberRelationship, $Out> {
  _MemberRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MemberRelationship> $mapper =
      MemberRelationshipMapper.ensureInitialized();
  @override
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes>? get attributes =>
      $value.attributes?.copyWith.$chain((v) => call(attributes: v));
  @override
  $R call({Uuid? id, Object? attributes = $none}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != $none) #attributes: attributes
      }));
  @override
  MemberRelationship $make(CopyWithData data) => MemberRelationship(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes));

  @override
  MemberRelationshipCopyWith<$R2, MemberRelationship, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MemberRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DefaultRelationshipMapper
    extends SubClassMapperBase<DefaultRelationship> {
  DefaultRelationshipMapper._();

  static DefaultRelationshipMapper? _instance;
  static DefaultRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DefaultRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
      RelationshipTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DefaultRelationship';

  static Uuid _$id(DefaultRelationship v) => v.id;
  static const Field<DefaultRelationship, Uuid> _f$id = Field('id', _$id);
  static RelationshipType _$type(DefaultRelationship v) => v.type;
  static const Field<DefaultRelationship, RelationshipType> _f$type =
      Field('type', _$type);

  @override
  final MappableFields<DefaultRelationship> fields = const {
    #id: _f$id,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static DefaultRelationship _instantiate(DecodingData data) {
    return DefaultRelationship(id: data.dec(_f$id), type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static DefaultRelationship fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DefaultRelationship>(map);
  }

  static DefaultRelationship fromJson(String json) {
    return ensureInitialized().decodeJson<DefaultRelationship>(json);
  }
}

mixin DefaultRelationshipMappable {
  String toJson() {
    return DefaultRelationshipMapper.ensureInitialized()
        .encodeJson<DefaultRelationship>(this as DefaultRelationship);
  }

  Map<String, dynamic> toMap() {
    return DefaultRelationshipMapper.ensureInitialized()
        .encodeMap<DefaultRelationship>(this as DefaultRelationship);
  }

  DefaultRelationshipCopyWith<DefaultRelationship, DefaultRelationship,
      DefaultRelationship> get copyWith => _DefaultRelationshipCopyWithImpl<
          DefaultRelationship, DefaultRelationship>(
      this as DefaultRelationship, $identity, $identity);
  @override
  String toString() {
    return DefaultRelationshipMapper.ensureInitialized()
        .stringifyValue(this as DefaultRelationship);
  }

  @override
  bool operator ==(Object other) {
    return DefaultRelationshipMapper.ensureInitialized()
        .equalsValue(this as DefaultRelationship, other);
  }

  @override
  int get hashCode {
    return DefaultRelationshipMapper.ensureInitialized()
        .hashValue(this as DefaultRelationship);
  }
}

extension DefaultRelationshipValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DefaultRelationship, $Out> {
  DefaultRelationshipCopyWith<$R, DefaultRelationship, $Out>
      get $asDefaultRelationship => $base.as(
          (v, t, t2) => _DefaultRelationshipCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DefaultRelationshipCopyWith<$R, $In extends DefaultRelationship,
    $Out> implements RelationshipCopyWith<$R, $In, $Out> {
  @override
  $R call({Uuid? id, RelationshipType? type});
  DefaultRelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DefaultRelationshipCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DefaultRelationship, $Out>
    implements DefaultRelationshipCopyWith<$R, DefaultRelationship, $Out> {
  _DefaultRelationshipCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DefaultRelationship> $mapper =
      DefaultRelationshipMapper.ensureInitialized();
  @override
  $R call({Uuid? id, RelationshipType? type}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (type != null) #type: type}));
  @override
  DefaultRelationship $make(CopyWithData data) => DefaultRelationship(
      id: data.get(#id, or: $value.id), type: data.get(#type, or: $value.type));

  @override
  DefaultRelationshipCopyWith<$R2, DefaultRelationship, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DefaultRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
