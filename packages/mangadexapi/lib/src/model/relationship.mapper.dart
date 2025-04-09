// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'relationship.dart';

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

class RelationshipMapper extends ClassMapperBase<Relationship> {
  RelationshipMapper._();

  static RelationshipMapper? _instance;
  static RelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RelationshipMapper._());
      MapperContainer.globals.useAll([UuidValueMapper()]);
      CoverArtRelationshipMapper.ensureInitialized();
      MangaRelationshipMapper.ensureInitialized();
      DefaultRelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Relationship';

  static UuidValue _$id(Relationship v) => v.id;
  static const Field<Relationship, UuidValue> _f$id = Field('id', _$id);

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
  $R call({UuidValue? id});
  RelationshipCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class CoverArtRelationshipMapper
    extends SubClassMapperBase<CoverArtRelationship> {
  CoverArtRelationshipMapper._();

  static CoverArtRelationshipMapper? _instance;
  static CoverArtRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CoverArtRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CoverArtRelationship';

  static UuidValue _$id(CoverArtRelationship v) => v.id;
  static const Field<CoverArtRelationship, UuidValue> _f$id = Field('id', _$id);

  @override
  final MappableFields<CoverArtRelationship> fields = const {
    #id: _f$id,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.cover_art;
  @override
  late final ClassMapperBase superMapper =
      RelationshipMapper.ensureInitialized();

  static CoverArtRelationship _instantiate(DecodingData data) {
    return CoverArtRelationship(id: data.dec(_f$id));
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
  @override
  $R call({UuidValue? id});
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
  $R call({UuidValue? id}) =>
      $apply(FieldCopyWithData({if (id != null) #id: id}));
  @override
  CoverArtRelationship $make(CopyWithData data) =>
      CoverArtRelationship(id: data.get(#id, or: $value.id));

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

  static UuidValue _$id(MangaRelationship v) => v.id;
  static const Field<MangaRelationship, UuidValue> _f$id = Field('id', _$id);
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
  final dynamic discriminatorValue = EntityType.manga;
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
  $R call({UuidValue? id, MangaRelated? related, MangaAttributes? attributes});
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
  $R call(
          {UuidValue? id,
          Object? related = $none,
          Object? attributes = $none}) =>
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

class DefaultRelationshipMapper
    extends SubClassMapperBase<DefaultRelationship> {
  DefaultRelationshipMapper._();

  static DefaultRelationshipMapper? _instance;
  static DefaultRelationshipMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DefaultRelationshipMapper._());
      RelationshipMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'DefaultRelationship';

  static UuidValue _$id(DefaultRelationship v) => v.id;
  static const Field<DefaultRelationship, UuidValue> _f$id = Field('id', _$id);
  static String _$type(DefaultRelationship v) => v.type;
  static const Field<DefaultRelationship, String> _f$type =
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
  $R call({UuidValue? id, String? type});
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
  $R call({UuidValue? id, String? type}) => $apply(FieldCopyWithData(
      {if (id != null) #id: id, if (type != null) #type: type}));
  @override
  DefaultRelationship $make(CopyWithData data) => DefaultRelationship(
      id: data.get(#id, or: $value.id), type: data.get(#type, or: $value.type));

  @override
  DefaultRelationshipCopyWith<$R2, DefaultRelationship, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DefaultRelationshipCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
