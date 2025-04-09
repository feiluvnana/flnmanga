// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entity.dart';

class EntityMapper extends ClassMapperBase<Entity> {
  EntityMapper._();

  static EntityMapper? _instance;
  static EntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EntityMapper._());
      MangaMapper.ensureInitialized();
      DefaultEntityMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Entity';

  static String _$id(Entity v) => v.id;
  static const Field<Entity, String> _f$id = Field('id', _$id);
  static List<Relationship> _$relationships(Entity v) => v.relationships;
  static const Field<Entity, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<Entity> fields = const {
    #id: _f$id,
    #relationships: _f$relationships,
  };

  static Entity _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'Entity', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static Entity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Entity>(map);
  }

  static Entity fromJson(String json) {
    return ensureInitialized().decodeJson<Entity>(json);
  }
}

mixin EntityMappable {
  String toJson();
  Map<String, dynamic> toMap();
  EntityCopyWith<Entity, Entity, Entity> get copyWith;
}

abstract class EntityCopyWith<$R, $In extends Entity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Relationship,
      ObjectCopyWith<$R, Relationship, Relationship>?> get relationships;
  $R call({String? id, List<Relationship>? relationships});
  EntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class MangaMapper extends SubClassMapperBase<Manga> {
  MangaMapper._();

  static MangaMapper? _instance;
  static MangaMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      MangaAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Manga';

  static String _$id(Manga v) => v.id;
  static const Field<Manga, String> _f$id = Field('id', _$id);
  static MangaAttributes _$attributes(Manga v) => v.attributes;
  static const Field<Manga, MangaAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(Manga v) => v.relationships;
  static const Field<Manga, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<Manga> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "manga";
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static Manga _instantiate(DecodingData data) {
    return Manga(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static Manga fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Manga>(map);
  }

  static Manga fromJson(String json) {
    return ensureInitialized().decodeJson<Manga>(json);
  }
}

mixin MangaMappable {
  String toJson() {
    return MangaMapper.ensureInitialized().encodeJson<Manga>(this as Manga);
  }

  Map<String, dynamic> toMap() {
    return MangaMapper.ensureInitialized().encodeMap<Manga>(this as Manga);
  }

  MangaCopyWith<Manga, Manga, Manga> get copyWith =>
      _MangaCopyWithImpl<Manga, Manga>(this as Manga, $identity, $identity);
  @override
  String toString() {
    return MangaMapper.ensureInitialized().stringifyValue(this as Manga);
  }

  @override
  bool operator ==(Object other) {
    return MangaMapper.ensureInitialized().equalsValue(this as Manga, other);
  }

  @override
  int get hashCode {
    return MangaMapper.ensureInitialized().hashValue(this as Manga);
  }
}

extension MangaValueCopy<$R, $Out> on ObjectCopyWith<$R, Manga, $Out> {
  MangaCopyWith<$R, Manga, $Out> get $asManga =>
      $base.as((v, t, t2) => _MangaCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaCopyWith<$R, $In extends Manga, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  MangaAttributesCopyWith<$R, MangaAttributes, MangaAttributes> get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {String? id,
      MangaAttributes? attributes,
      List<Relationship>? relationships});
  MangaCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MangaCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Manga, $Out>
    implements MangaCopyWith<$R, Manga, $Out> {
  _MangaCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Manga> $mapper = MangaMapper.ensureInitialized();
  @override
  MangaAttributesCopyWith<$R, MangaAttributes, MangaAttributes>
      get attributes =>
          $value.attributes.copyWith.$chain((v) => call(attributes: v));
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships => ListCopyWith(
          $value.relationships,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(relationships: v));
  @override
  $R call(
          {String? id,
          MangaAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  Manga $make(CopyWithData data) => Manga(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  MangaCopyWith<$R2, Manga, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _MangaCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class DefaultEntityMapper extends SubClassMapperBase<DefaultEntity> {
  DefaultEntityMapper._();

  static DefaultEntityMapper? _instance;
  static DefaultEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DefaultEntityMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DefaultEntity';

  static String _$id(DefaultEntity v) => v.id;
  static const Field<DefaultEntity, String> _f$id = Field('id', _$id);
  static List<Relationship> _$relationships(DefaultEntity v) => v.relationships;
  static const Field<DefaultEntity, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<DefaultEntity> fields = const {
    #id: _f$id,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static DefaultEntity _instantiate(DecodingData data) {
    return DefaultEntity(
        id: data.dec(_f$id), relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static DefaultEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DefaultEntity>(map);
  }

  static DefaultEntity fromJson(String json) {
    return ensureInitialized().decodeJson<DefaultEntity>(json);
  }
}

mixin DefaultEntityMappable {
  String toJson() {
    return DefaultEntityMapper.ensureInitialized()
        .encodeJson<DefaultEntity>(this as DefaultEntity);
  }

  Map<String, dynamic> toMap() {
    return DefaultEntityMapper.ensureInitialized()
        .encodeMap<DefaultEntity>(this as DefaultEntity);
  }

  DefaultEntityCopyWith<DefaultEntity, DefaultEntity, DefaultEntity>
      get copyWith => _DefaultEntityCopyWithImpl<DefaultEntity, DefaultEntity>(
          this as DefaultEntity, $identity, $identity);
  @override
  String toString() {
    return DefaultEntityMapper.ensureInitialized()
        .stringifyValue(this as DefaultEntity);
  }

  @override
  bool operator ==(Object other) {
    return DefaultEntityMapper.ensureInitialized()
        .equalsValue(this as DefaultEntity, other);
  }

  @override
  int get hashCode {
    return DefaultEntityMapper.ensureInitialized()
        .hashValue(this as DefaultEntity);
  }
}

extension DefaultEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DefaultEntity, $Out> {
  DefaultEntityCopyWith<$R, DefaultEntity, $Out> get $asDefaultEntity =>
      $base.as((v, t, t2) => _DefaultEntityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DefaultEntityCopyWith<$R, $In extends DefaultEntity, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call({String? id, List<Relationship>? relationships});
  DefaultEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DefaultEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DefaultEntity, $Out>
    implements DefaultEntityCopyWith<$R, DefaultEntity, $Out> {
  _DefaultEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DefaultEntity> $mapper =
      DefaultEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships => ListCopyWith(
          $value.relationships,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(relationships: v));
  @override
  $R call({String? id, List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (relationships != null) #relationships: relationships
      }));
  @override
  DefaultEntity $make(CopyWithData data) => DefaultEntity(
      id: data.get(#id, or: $value.id),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  DefaultEntityCopyWith<$R2, DefaultEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DefaultEntityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
