// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entities.dart';

class EntityMapper extends ClassMapperBase<Entity> {
  EntityMapper._();

  static EntityMapper? _instance;
  static EntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EntityMapper._());
      MapperContainer.globals.useAll([UuidMapper()]);
      AuthorMapper.ensureInitialized();
      ChapterMapper.ensureInitialized();
      CoverArtMapper.ensureInitialized();
      CustomListMapper.ensureInitialized();
      MappingIdMapper.ensureInitialized();
      MangaMapper.ensureInitialized();
      TagMapper.ensureInitialized();
      MangaRelationMapper.ensureInitialized();
      ScanlationGroupMapper.ensureInitialized();
      UserMapper.ensureInitialized();
      DefaultEntityMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Entity';

  static Uuid _$id(Entity v) => v.id;
  static const Field<Entity, Uuid> _f$id = Field('id', _$id);
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
  $R call({Uuid? id, List<Relationship>? relationships});
  EntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AuthorMapper extends SubClassMapperBase<Author> {
  AuthorMapper._();

  static AuthorMapper? _instance;
  static AuthorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthorMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      AuthorAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Author';

  static Uuid _$id(Author v) => v.id;
  static const Field<Author, Uuid> _f$id = Field('id', _$id);
  static AuthorAttributes _$attributes(Author v) => v.attributes;
  static const Field<Author, AuthorAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(Author v) => v.relationships;
  static const Field<Author, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<Author> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.author;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static Author _instantiate(DecodingData data) {
    return Author(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static Author fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Author>(map);
  }

  static Author fromJson(String json) {
    return ensureInitialized().decodeJson<Author>(json);
  }
}

mixin AuthorMappable {
  String toJson() {
    return AuthorMapper.ensureInitialized().encodeJson<Author>(this as Author);
  }

  Map<String, dynamic> toMap() {
    return AuthorMapper.ensureInitialized().encodeMap<Author>(this as Author);
  }

  AuthorCopyWith<Author, Author, Author> get copyWith =>
      _AuthorCopyWithImpl<Author, Author>(this as Author, $identity, $identity);
  @override
  String toString() {
    return AuthorMapper.ensureInitialized().stringifyValue(this as Author);
  }

  @override
  bool operator ==(Object other) {
    return AuthorMapper.ensureInitialized().equalsValue(this as Author, other);
  }

  @override
  int get hashCode {
    return AuthorMapper.ensureInitialized().hashValue(this as Author);
  }
}

extension AuthorValueCopy<$R, $Out> on ObjectCopyWith<$R, Author, $Out> {
  AuthorCopyWith<$R, Author, $Out> get $asAuthor =>
      $base.as((v, t, t2) => _AuthorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AuthorCopyWith<$R, $In extends Author, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>
      get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      AuthorAttributes? attributes,
      List<Relationship>? relationships});
  AuthorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthorCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Author, $Out>
    implements AuthorCopyWith<$R, Author, $Out> {
  _AuthorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Author> $mapper = AuthorMapper.ensureInitialized();
  @override
  AuthorAttributesCopyWith<$R, AuthorAttributes, AuthorAttributes>
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
          {Uuid? id,
          AuthorAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  Author $make(CopyWithData data) => Author(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  AuthorCopyWith<$R2, Author, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _AuthorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChapterMapper extends SubClassMapperBase<Chapter> {
  ChapterMapper._();

  static ChapterMapper? _instance;
  static ChapterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChapterMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      ChapterAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Chapter';

  static Uuid _$id(Chapter v) => v.id;
  static const Field<Chapter, Uuid> _f$id = Field('id', _$id);
  static ChapterAttributes _$attributes(Chapter v) => v.attributes;
  static const Field<Chapter, ChapterAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(Chapter v) => v.relationships;
  static const Field<Chapter, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<Chapter> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.chapter;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static Chapter _instantiate(DecodingData data) {
    return Chapter(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static Chapter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Chapter>(map);
  }

  static Chapter fromJson(String json) {
    return ensureInitialized().decodeJson<Chapter>(json);
  }
}

mixin ChapterMappable {
  String toJson() {
    return ChapterMapper.ensureInitialized()
        .encodeJson<Chapter>(this as Chapter);
  }

  Map<String, dynamic> toMap() {
    return ChapterMapper.ensureInitialized()
        .encodeMap<Chapter>(this as Chapter);
  }

  ChapterCopyWith<Chapter, Chapter, Chapter> get copyWith =>
      _ChapterCopyWithImpl<Chapter, Chapter>(
          this as Chapter, $identity, $identity);
  @override
  String toString() {
    return ChapterMapper.ensureInitialized().stringifyValue(this as Chapter);
  }

  @override
  bool operator ==(Object other) {
    return ChapterMapper.ensureInitialized()
        .equalsValue(this as Chapter, other);
  }

  @override
  int get hashCode {
    return ChapterMapper.ensureInitialized().hashValue(this as Chapter);
  }
}

extension ChapterValueCopy<$R, $Out> on ObjectCopyWith<$R, Chapter, $Out> {
  ChapterCopyWith<$R, Chapter, $Out> get $asChapter =>
      $base.as((v, t, t2) => _ChapterCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChapterCopyWith<$R, $In extends Chapter, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  ChapterAttributesCopyWith<$R, ChapterAttributes, ChapterAttributes>
      get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      ChapterAttributes? attributes,
      List<Relationship>? relationships});
  ChapterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChapterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Chapter, $Out>
    implements ChapterCopyWith<$R, Chapter, $Out> {
  _ChapterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Chapter> $mapper =
      ChapterMapper.ensureInitialized();
  @override
  ChapterAttributesCopyWith<$R, ChapterAttributes, ChapterAttributes>
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
          {Uuid? id,
          ChapterAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  Chapter $make(CopyWithData data) => Chapter(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  ChapterCopyWith<$R2, Chapter, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChapterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CoverArtMapper extends SubClassMapperBase<CoverArt> {
  CoverArtMapper._();

  static CoverArtMapper? _instance;
  static CoverArtMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CoverArtMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      CoverArtAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CoverArt';

  static Uuid _$id(CoverArt v) => v.id;
  static const Field<CoverArt, Uuid> _f$id = Field('id', _$id);
  static CoverArtAttributes _$attributes(CoverArt v) => v.attributes;
  static const Field<CoverArt, CoverArtAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(CoverArt v) => v.relationships;
  static const Field<CoverArt, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<CoverArt> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.cover_art;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static CoverArt _instantiate(DecodingData data) {
    return CoverArt(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static CoverArt fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CoverArt>(map);
  }

  static CoverArt fromJson(String json) {
    return ensureInitialized().decodeJson<CoverArt>(json);
  }
}

mixin CoverArtMappable {
  String toJson() {
    return CoverArtMapper.ensureInitialized()
        .encodeJson<CoverArt>(this as CoverArt);
  }

  Map<String, dynamic> toMap() {
    return CoverArtMapper.ensureInitialized()
        .encodeMap<CoverArt>(this as CoverArt);
  }

  CoverArtCopyWith<CoverArt, CoverArt, CoverArt> get copyWith =>
      _CoverArtCopyWithImpl<CoverArt, CoverArt>(
          this as CoverArt, $identity, $identity);
  @override
  String toString() {
    return CoverArtMapper.ensureInitialized().stringifyValue(this as CoverArt);
  }

  @override
  bool operator ==(Object other) {
    return CoverArtMapper.ensureInitialized()
        .equalsValue(this as CoverArt, other);
  }

  @override
  int get hashCode {
    return CoverArtMapper.ensureInitialized().hashValue(this as CoverArt);
  }
}

extension CoverArtValueCopy<$R, $Out> on ObjectCopyWith<$R, CoverArt, $Out> {
  CoverArtCopyWith<$R, CoverArt, $Out> get $asCoverArt =>
      $base.as((v, t, t2) => _CoverArtCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CoverArtCopyWith<$R, $In extends CoverArt, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  CoverArtAttributesCopyWith<$R, CoverArtAttributes, CoverArtAttributes>
      get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      CoverArtAttributes? attributes,
      List<Relationship>? relationships});
  CoverArtCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CoverArtCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CoverArt, $Out>
    implements CoverArtCopyWith<$R, CoverArt, $Out> {
  _CoverArtCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CoverArt> $mapper =
      CoverArtMapper.ensureInitialized();
  @override
  CoverArtAttributesCopyWith<$R, CoverArtAttributes, CoverArtAttributes>
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
          {Uuid? id,
          CoverArtAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  CoverArt $make(CopyWithData data) => CoverArt(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  CoverArtCopyWith<$R2, CoverArt, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CoverArtCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CustomListMapper extends SubClassMapperBase<CustomList> {
  CustomListMapper._();

  static CustomListMapper? _instance;
  static CustomListMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CustomListMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      CustomListAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CustomList';

  static Uuid _$id(CustomList v) => v.id;
  static const Field<CustomList, Uuid> _f$id = Field('id', _$id);
  static CustomListAttributes _$attributes(CustomList v) => v.attributes;
  static const Field<CustomList, CustomListAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(CustomList v) => v.relationships;
  static const Field<CustomList, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<CustomList> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.custom_list;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static CustomList _instantiate(DecodingData data) {
    return CustomList(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static CustomList fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CustomList>(map);
  }

  static CustomList fromJson(String json) {
    return ensureInitialized().decodeJson<CustomList>(json);
  }
}

mixin CustomListMappable {
  String toJson() {
    return CustomListMapper.ensureInitialized()
        .encodeJson<CustomList>(this as CustomList);
  }

  Map<String, dynamic> toMap() {
    return CustomListMapper.ensureInitialized()
        .encodeMap<CustomList>(this as CustomList);
  }

  CustomListCopyWith<CustomList, CustomList, CustomList> get copyWith =>
      _CustomListCopyWithImpl<CustomList, CustomList>(
          this as CustomList, $identity, $identity);
  @override
  String toString() {
    return CustomListMapper.ensureInitialized()
        .stringifyValue(this as CustomList);
  }

  @override
  bool operator ==(Object other) {
    return CustomListMapper.ensureInitialized()
        .equalsValue(this as CustomList, other);
  }

  @override
  int get hashCode {
    return CustomListMapper.ensureInitialized().hashValue(this as CustomList);
  }
}

extension CustomListValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CustomList, $Out> {
  CustomListCopyWith<$R, CustomList, $Out> get $asCustomList =>
      $base.as((v, t, t2) => _CustomListCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CustomListCopyWith<$R, $In extends CustomList, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  CustomListAttributesCopyWith<$R, CustomListAttributes, CustomListAttributes>
      get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      CustomListAttributes? attributes,
      List<Relationship>? relationships});
  CustomListCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CustomListCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CustomList, $Out>
    implements CustomListCopyWith<$R, CustomList, $Out> {
  _CustomListCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CustomList> $mapper =
      CustomListMapper.ensureInitialized();
  @override
  CustomListAttributesCopyWith<$R, CustomListAttributes, CustomListAttributes>
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
          {Uuid? id,
          CustomListAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  CustomList $make(CopyWithData data) => CustomList(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  CustomListCopyWith<$R2, CustomList, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CustomListCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MappingIdMapper extends SubClassMapperBase<MappingId> {
  MappingIdMapper._();

  static MappingIdMapper? _instance;
  static MappingIdMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MappingIdMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      MappingIdAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MappingId';

  static Uuid _$id(MappingId v) => v.id;
  static const Field<MappingId, Uuid> _f$id = Field('id', _$id);
  static MappingIdAttributes _$attributes(MappingId v) => v.attributes;
  static const Field<MappingId, MappingIdAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(MappingId v) => v.relationships;
  static const Field<MappingId, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<MappingId> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.mapping_id;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static MappingId _instantiate(DecodingData data) {
    return MappingId(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static MappingId fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MappingId>(map);
  }

  static MappingId fromJson(String json) {
    return ensureInitialized().decodeJson<MappingId>(json);
  }
}

mixin MappingIdMappable {
  String toJson() {
    return MappingIdMapper.ensureInitialized()
        .encodeJson<MappingId>(this as MappingId);
  }

  Map<String, dynamic> toMap() {
    return MappingIdMapper.ensureInitialized()
        .encodeMap<MappingId>(this as MappingId);
  }

  MappingIdCopyWith<MappingId, MappingId, MappingId> get copyWith =>
      _MappingIdCopyWithImpl<MappingId, MappingId>(
          this as MappingId, $identity, $identity);
  @override
  String toString() {
    return MappingIdMapper.ensureInitialized()
        .stringifyValue(this as MappingId);
  }

  @override
  bool operator ==(Object other) {
    return MappingIdMapper.ensureInitialized()
        .equalsValue(this as MappingId, other);
  }

  @override
  int get hashCode {
    return MappingIdMapper.ensureInitialized().hashValue(this as MappingId);
  }
}

extension MappingIdValueCopy<$R, $Out> on ObjectCopyWith<$R, MappingId, $Out> {
  MappingIdCopyWith<$R, MappingId, $Out> get $asMappingId =>
      $base.as((v, t, t2) => _MappingIdCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MappingIdCopyWith<$R, $In extends MappingId, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  MappingIdAttributesCopyWith<$R, MappingIdAttributes, MappingIdAttributes>
      get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      MappingIdAttributes? attributes,
      List<Relationship>? relationships});
  MappingIdCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MappingIdCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MappingId, $Out>
    implements MappingIdCopyWith<$R, MappingId, $Out> {
  _MappingIdCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MappingId> $mapper =
      MappingIdMapper.ensureInitialized();
  @override
  MappingIdAttributesCopyWith<$R, MappingIdAttributes, MappingIdAttributes>
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
          {Uuid? id,
          MappingIdAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  MappingId $make(CopyWithData data) => MappingId(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  MappingIdCopyWith<$R2, MappingId, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MappingIdCopyWithImpl<$R2, $Out2>($value, $cast, t);
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

  static Uuid _$id(Manga v) => v.id;
  static const Field<Manga, Uuid> _f$id = Field('id', _$id);
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
  final dynamic discriminatorValue = EntityType.manga;
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
      {Uuid? id,
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
          {Uuid? id,
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

class TagMapper extends SubClassMapperBase<Tag> {
  TagMapper._();

  static TagMapper? _instance;
  static TagMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      TagAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Tag';

  static Uuid _$id(Tag v) => v.id;
  static const Field<Tag, Uuid> _f$id = Field('id', _$id);
  static TagAttributes _$attributes(Tag v) => v.attributes;
  static const Field<Tag, TagAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(Tag v) => v.relationships;
  static const Field<Tag, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<Tag> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.tag;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static Tag _instantiate(DecodingData data) {
    return Tag(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static Tag fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Tag>(map);
  }

  static Tag fromJson(String json) {
    return ensureInitialized().decodeJson<Tag>(json);
  }
}

mixin TagMappable {
  String toJson() {
    return TagMapper.ensureInitialized().encodeJson<Tag>(this as Tag);
  }

  Map<String, dynamic> toMap() {
    return TagMapper.ensureInitialized().encodeMap<Tag>(this as Tag);
  }

  TagCopyWith<Tag, Tag, Tag> get copyWith =>
      _TagCopyWithImpl<Tag, Tag>(this as Tag, $identity, $identity);
  @override
  String toString() {
    return TagMapper.ensureInitialized().stringifyValue(this as Tag);
  }

  @override
  bool operator ==(Object other) {
    return TagMapper.ensureInitialized().equalsValue(this as Tag, other);
  }

  @override
  int get hashCode {
    return TagMapper.ensureInitialized().hashValue(this as Tag);
  }
}

extension TagValueCopy<$R, $Out> on ObjectCopyWith<$R, Tag, $Out> {
  TagCopyWith<$R, Tag, $Out> get $asTag =>
      $base.as((v, t, t2) => _TagCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagCopyWith<$R, $In extends Tag, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  TagAttributesCopyWith<$R, TagAttributes, TagAttributes> get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id, TagAttributes? attributes, List<Relationship>? relationships});
  TagCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Tag, $Out>
    implements TagCopyWith<$R, Tag, $Out> {
  _TagCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Tag> $mapper = TagMapper.ensureInitialized();
  @override
  TagAttributesCopyWith<$R, TagAttributes, TagAttributes> get attributes =>
      $value.attributes.copyWith.$chain((v) => call(attributes: v));
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships => ListCopyWith(
          $value.relationships,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(relationships: v));
  @override
  $R call(
          {Uuid? id,
          TagAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  Tag $make(CopyWithData data) => Tag(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  TagCopyWith<$R2, Tag, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaRelationMapper extends SubClassMapperBase<MangaRelation> {
  MangaRelationMapper._();

  static MangaRelationMapper? _instance;
  static MangaRelationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaRelationMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      MangaRelationAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaRelation';

  static Uuid _$id(MangaRelation v) => v.id;
  static const Field<MangaRelation, Uuid> _f$id = Field('id', _$id);
  static MangaRelationAttributes _$attributes(MangaRelation v) => v.attributes;
  static const Field<MangaRelation, MangaRelationAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(MangaRelation v) => v.relationships;
  static const Field<MangaRelation, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<MangaRelation> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.manga_relation;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static MangaRelation _instantiate(DecodingData data) {
    return MangaRelation(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaRelation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaRelation>(map);
  }

  static MangaRelation fromJson(String json) {
    return ensureInitialized().decodeJson<MangaRelation>(json);
  }
}

mixin MangaRelationMappable {
  String toJson() {
    return MangaRelationMapper.ensureInitialized()
        .encodeJson<MangaRelation>(this as MangaRelation);
  }

  Map<String, dynamic> toMap() {
    return MangaRelationMapper.ensureInitialized()
        .encodeMap<MangaRelation>(this as MangaRelation);
  }

  MangaRelationCopyWith<MangaRelation, MangaRelation, MangaRelation>
      get copyWith => _MangaRelationCopyWithImpl<MangaRelation, MangaRelation>(
          this as MangaRelation, $identity, $identity);
  @override
  String toString() {
    return MangaRelationMapper.ensureInitialized()
        .stringifyValue(this as MangaRelation);
  }

  @override
  bool operator ==(Object other) {
    return MangaRelationMapper.ensureInitialized()
        .equalsValue(this as MangaRelation, other);
  }

  @override
  int get hashCode {
    return MangaRelationMapper.ensureInitialized()
        .hashValue(this as MangaRelation);
  }
}

extension MangaRelationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaRelation, $Out> {
  MangaRelationCopyWith<$R, MangaRelation, $Out> get $asMangaRelation =>
      $base.as((v, t, t2) => _MangaRelationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaRelationCopyWith<$R, $In extends MangaRelation, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  MangaRelationAttributesCopyWith<$R, MangaRelationAttributes,
      MangaRelationAttributes> get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      MangaRelationAttributes? attributes,
      List<Relationship>? relationships});
  MangaRelationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MangaRelationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaRelation, $Out>
    implements MangaRelationCopyWith<$R, MangaRelation, $Out> {
  _MangaRelationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaRelation> $mapper =
      MangaRelationMapper.ensureInitialized();
  @override
  MangaRelationAttributesCopyWith<$R, MangaRelationAttributes,
          MangaRelationAttributes>
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
          {Uuid? id,
          MangaRelationAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  MangaRelation $make(CopyWithData data) => MangaRelation(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  MangaRelationCopyWith<$R2, MangaRelation, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaRelationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ScanlationGroupMapper extends SubClassMapperBase<ScanlationGroup> {
  ScanlationGroupMapper._();

  static ScanlationGroupMapper? _instance;
  static ScanlationGroupMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScanlationGroupMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      ScanlationGroupAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ScanlationGroup';

  static Uuid _$id(ScanlationGroup v) => v.id;
  static const Field<ScanlationGroup, Uuid> _f$id = Field('id', _$id);
  static ScanlationGroupAttributes _$attributes(ScanlationGroup v) =>
      v.attributes;
  static const Field<ScanlationGroup, ScanlationGroupAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(ScanlationGroup v) =>
      v.relationships;
  static const Field<ScanlationGroup, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<ScanlationGroup> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.scanlation_group;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static ScanlationGroup _instantiate(DecodingData data) {
    return ScanlationGroup(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static ScanlationGroup fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScanlationGroup>(map);
  }

  static ScanlationGroup fromJson(String json) {
    return ensureInitialized().decodeJson<ScanlationGroup>(json);
  }
}

mixin ScanlationGroupMappable {
  String toJson() {
    return ScanlationGroupMapper.ensureInitialized()
        .encodeJson<ScanlationGroup>(this as ScanlationGroup);
  }

  Map<String, dynamic> toMap() {
    return ScanlationGroupMapper.ensureInitialized()
        .encodeMap<ScanlationGroup>(this as ScanlationGroup);
  }

  ScanlationGroupCopyWith<ScanlationGroup, ScanlationGroup, ScanlationGroup>
      get copyWith =>
          _ScanlationGroupCopyWithImpl<ScanlationGroup, ScanlationGroup>(
              this as ScanlationGroup, $identity, $identity);
  @override
  String toString() {
    return ScanlationGroupMapper.ensureInitialized()
        .stringifyValue(this as ScanlationGroup);
  }

  @override
  bool operator ==(Object other) {
    return ScanlationGroupMapper.ensureInitialized()
        .equalsValue(this as ScanlationGroup, other);
  }

  @override
  int get hashCode {
    return ScanlationGroupMapper.ensureInitialized()
        .hashValue(this as ScanlationGroup);
  }
}

extension ScanlationGroupValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ScanlationGroup, $Out> {
  ScanlationGroupCopyWith<$R, ScanlationGroup, $Out> get $asScanlationGroup =>
      $base.as((v, t, t2) => _ScanlationGroupCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ScanlationGroupCopyWith<$R, $In extends ScanlationGroup, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes,
      ScanlationGroupAttributes> get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      ScanlationGroupAttributes? attributes,
      List<Relationship>? relationships});
  ScanlationGroupCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ScanlationGroupCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ScanlationGroup, $Out>
    implements ScanlationGroupCopyWith<$R, ScanlationGroup, $Out> {
  _ScanlationGroupCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ScanlationGroup> $mapper =
      ScanlationGroupMapper.ensureInitialized();
  @override
  ScanlationGroupAttributesCopyWith<$R, ScanlationGroupAttributes,
          ScanlationGroupAttributes>
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
          {Uuid? id,
          ScanlationGroupAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  ScanlationGroup $make(CopyWithData data) => ScanlationGroup(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  ScanlationGroupCopyWith<$R2, ScanlationGroup, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ScanlationGroupCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UserMapper extends SubClassMapperBase<User> {
  UserMapper._();

  static UserMapper? _instance;
  static UserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserMapper._());
      EntityMapper.ensureInitialized().addSubMapper(_instance!);
      UserAttributesMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'User';

  static Uuid _$id(User v) => v.id;
  static const Field<User, Uuid> _f$id = Field('id', _$id);
  static UserAttributes _$attributes(User v) => v.attributes;
  static const Field<User, UserAttributes> _f$attributes =
      Field('attributes', _$attributes);
  static List<Relationship> _$relationships(User v) => v.relationships;
  static const Field<User, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);

  @override
  final MappableFields<User> fields = const {
    #id: _f$id,
    #attributes: _f$attributes,
    #relationships: _f$relationships,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = EntityType.user;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static User _instantiate(DecodingData data) {
    return User(
        id: data.dec(_f$id),
        attributes: data.dec(_f$attributes),
        relationships: data.dec(_f$relationships));
  }

  @override
  final Function instantiate = _instantiate;

  static User fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<User>(map);
  }

  static User fromJson(String json) {
    return ensureInitialized().decodeJson<User>(json);
  }
}

mixin UserMappable {
  String toJson() {
    return UserMapper.ensureInitialized().encodeJson<User>(this as User);
  }

  Map<String, dynamic> toMap() {
    return UserMapper.ensureInitialized().encodeMap<User>(this as User);
  }

  UserCopyWith<User, User, User> get copyWith =>
      _UserCopyWithImpl<User, User>(this as User, $identity, $identity);
  @override
  String toString() {
    return UserMapper.ensureInitialized().stringifyValue(this as User);
  }

  @override
  bool operator ==(Object other) {
    return UserMapper.ensureInitialized().equalsValue(this as User, other);
  }

  @override
  int get hashCode {
    return UserMapper.ensureInitialized().hashValue(this as User);
  }
}

extension UserValueCopy<$R, $Out> on ObjectCopyWith<$R, User, $Out> {
  UserCopyWith<$R, User, $Out> get $asUser =>
      $base.as((v, t, t2) => _UserCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UserCopyWith<$R, $In extends User, $Out>
    implements EntityCopyWith<$R, $In, $Out> {
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes> get attributes;
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships;
  @override
  $R call(
      {Uuid? id,
      UserAttributes? attributes,
      List<Relationship>? relationships});
  UserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, User, $Out>
    implements UserCopyWith<$R, User, $Out> {
  _UserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<User> $mapper = UserMapper.ensureInitialized();
  @override
  UserAttributesCopyWith<$R, UserAttributes, UserAttributes> get attributes =>
      $value.attributes.copyWith.$chain((v) => call(attributes: v));
  @override
  ListCopyWith<$R, Relationship, ObjectCopyWith<$R, Relationship, Relationship>>
      get relationships => ListCopyWith(
          $value.relationships,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(relationships: v));
  @override
  $R call(
          {Uuid? id,
          UserAttributes? attributes,
          List<Relationship>? relationships}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (attributes != null) #attributes: attributes,
        if (relationships != null) #relationships: relationships
      }));
  @override
  User $make(CopyWithData data) => User(
      id: data.get(#id, or: $value.id),
      attributes: data.get(#attributes, or: $value.attributes),
      relationships: data.get(#relationships, or: $value.relationships));

  @override
  UserCopyWith<$R2, User, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserCopyWithImpl<$R2, $Out2>($value, $cast, t);
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

  static Uuid _$id(DefaultEntity v) => v.id;
  static const Field<DefaultEntity, Uuid> _f$id = Field('id', _$id);
  static List<Relationship> _$relationships(DefaultEntity v) => v.relationships;
  static const Field<DefaultEntity, List<Relationship>> _f$relationships =
      Field('relationships', _$relationships);
  static String _$type(DefaultEntity v) => v.type;
  static const Field<DefaultEntity, String> _f$type = Field('type', _$type);

  @override
  final MappableFields<DefaultEntity> fields = const {
    #id: _f$id,
    #relationships: _f$relationships,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper = EntityMapper.ensureInitialized();

  static DefaultEntity _instantiate(DecodingData data) {
    return DefaultEntity(
        id: data.dec(_f$id),
        relationships: data.dec(_f$relationships),
        type: data.dec(_f$type));
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
  $R call({Uuid? id, List<Relationship>? relationships, String? type});
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
  $R call({Uuid? id, List<Relationship>? relationships, String? type}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (relationships != null) #relationships: relationships,
        if (type != null) #type: type
      }));
  @override
  DefaultEntity $make(CopyWithData data) => DefaultEntity(
      id: data.get(#id, or: $value.id),
      relationships: data.get(#relationships, or: $value.relationships),
      type: data.get(#type, or: $value.type));

  @override
  DefaultEntityCopyWith<$R2, DefaultEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DefaultEntityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
