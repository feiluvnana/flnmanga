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
      MapperContainer.globals.useAll([UuidValueMapper()]);
      AuthorMapper.ensureInitialized();
      ChapterMapper.ensureInitialized();
      MangaMapper.ensureInitialized();
      TagMapper.ensureInitialized();
      DefaultEntityMapper.ensureInitialized();
      RelationshipMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Entity';

  static UuidValue _$id(Entity v) => v.id;
  static const Field<Entity, UuidValue> _f$id = Field('id', _$id);
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
  $R call({UuidValue? id, List<Relationship>? relationships});
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

  static UuidValue _$id(Author v) => v.id;
  static const Field<Author, UuidValue> _f$id = Field('id', _$id);
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
      {UuidValue? id,
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
          {UuidValue? id,
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

  static UuidValue _$id(Chapter v) => v.id;
  static const Field<Chapter, UuidValue> _f$id = Field('id', _$id);
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
      {UuidValue? id,
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
          {UuidValue? id,
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

  static UuidValue _$id(Manga v) => v.id;
  static const Field<Manga, UuidValue> _f$id = Field('id', _$id);
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
      {UuidValue? id,
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
          {UuidValue? id,
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

  static UuidValue _$id(Tag v) => v.id;
  static const Field<Tag, UuidValue> _f$id = Field('id', _$id);
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
      {UuidValue? id,
      TagAttributes? attributes,
      List<Relationship>? relationships});
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
          {UuidValue? id,
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

  static UuidValue _$id(DefaultEntity v) => v.id;
  static const Field<DefaultEntity, UuidValue> _f$id = Field('id', _$id);
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
  $R call({UuidValue? id, List<Relationship>? relationships, String? type});
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
  $R call({UuidValue? id, List<Relationship>? relationships, String? type}) =>
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
