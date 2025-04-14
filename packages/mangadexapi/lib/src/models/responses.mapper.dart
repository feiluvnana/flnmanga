// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'responses.dart';

class ResponseMapper extends ClassMapperBase<Response> {
  ResponseMapper._();

  static ResponseMapper? _instance;
  static ResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResponseMapper._());
      OkResponseMapper.ensureInitialized();
      ErrorResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Response';

  @override
  final MappableFields<Response> fields = const {};

  static Response _instantiate(DecodingData data) {
    return Response();
  }

  @override
  final Function instantiate = _instantiate;

  static Response fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Response>(map);
  }

  static Response fromJson(String json) {
    return ensureInitialized().decodeJson<Response>(json);
  }
}

mixin ResponseMappable {
  String toJson() {
    return ResponseMapper.ensureInitialized()
        .encodeJson<Response>(this as Response);
  }

  Map<String, dynamic> toMap() {
    return ResponseMapper.ensureInitialized()
        .encodeMap<Response>(this as Response);
  }

  ResponseCopyWith<Response, Response, Response> get copyWith =>
      _ResponseCopyWithImpl<Response, Response>(
          this as Response, $identity, $identity);
  @override
  String toString() {
    return ResponseMapper.ensureInitialized().stringifyValue(this as Response);
  }

  @override
  bool operator ==(Object other) {
    return ResponseMapper.ensureInitialized()
        .equalsValue(this as Response, other);
  }

  @override
  int get hashCode {
    return ResponseMapper.ensureInitialized().hashValue(this as Response);
  }
}

extension ResponseValueCopy<$R, $Out> on ObjectCopyWith<$R, Response, $Out> {
  ResponseCopyWith<$R, Response, $Out> get $asResponse =>
      $base.as((v, t, t2) => _ResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResponseCopyWith<$R, $In extends Response, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Response, $Out>
    implements ResponseCopyWith<$R, Response, $Out> {
  _ResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Response> $mapper =
      ResponseMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  Response $make(CopyWithData data) => Response();

  @override
  ResponseCopyWith<$R2, Response, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class OkResponseMapper extends SubClassMapperBase<OkResponse> {
  OkResponseMapper._();

  static OkResponseMapper? _instance;
  static OkResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OkResponseMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
      EntityResponseMapper.ensureInitialized();
      CollectionResponseMapper.ensureInitialized();
      AtHomeResponseMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OkResponse';

  @override
  final MappableFields<OkResponse> fields = const {};

  @override
  final String discriminatorKey = 'result';
  @override
  final dynamic discriminatorValue = "ok";
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  static OkResponse _instantiate(DecodingData data) {
    return OkResponse();
  }

  @override
  final Function instantiate = _instantiate;

  static OkResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OkResponse>(map);
  }

  static OkResponse fromJson(String json) {
    return ensureInitialized().decodeJson<OkResponse>(json);
  }
}

mixin OkResponseMappable {
  String toJson() {
    return OkResponseMapper.ensureInitialized()
        .encodeJson<OkResponse>(this as OkResponse);
  }

  Map<String, dynamic> toMap() {
    return OkResponseMapper.ensureInitialized()
        .encodeMap<OkResponse>(this as OkResponse);
  }

  OkResponseCopyWith<OkResponse, OkResponse, OkResponse> get copyWith =>
      _OkResponseCopyWithImpl<OkResponse, OkResponse>(
          this as OkResponse, $identity, $identity);
  @override
  String toString() {
    return OkResponseMapper.ensureInitialized()
        .stringifyValue(this as OkResponse);
  }

  @override
  bool operator ==(Object other) {
    return OkResponseMapper.ensureInitialized()
        .equalsValue(this as OkResponse, other);
  }

  @override
  int get hashCode {
    return OkResponseMapper.ensureInitialized().hashValue(this as OkResponse);
  }
}

extension OkResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OkResponse, $Out> {
  OkResponseCopyWith<$R, OkResponse, $Out> get $asOkResponse =>
      $base.as((v, t, t2) => _OkResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class OkResponseCopyWith<$R, $In extends OkResponse, $Out>
    implements ResponseCopyWith<$R, $In, $Out> {
  @override
  $R call();
  OkResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OkResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OkResponse, $Out>
    implements OkResponseCopyWith<$R, OkResponse, $Out> {
  _OkResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OkResponse> $mapper =
      OkResponseMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  OkResponse $make(CopyWithData data) => OkResponse();

  @override
  OkResponseCopyWith<$R2, OkResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OkResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class EntityResponseMapper extends SubClassMapperBase<EntityResponse> {
  EntityResponseMapper._();

  static EntityResponseMapper? _instance;
  static EntityResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = EntityResponseMapper._());
      OkResponseMapper.ensureInitialized().addSubMapper(_instance!);
      EntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'EntityResponse';
  @override
  Function get typeFactory => <T extends Entity>(f) => f<EntityResponse<T>>();

  static Entity _$data(EntityResponse v) => v.data;
  static dynamic _arg$data<T extends Entity>(f) => f<T>();
  static const Field<EntityResponse, Entity> _f$data =
      Field('data', _$data, arg: _arg$data);

  @override
  final MappableFields<EntityResponse> fields = const {
    #data: _f$data,
  };

  @override
  final String discriminatorKey = 'response';
  @override
  final dynamic discriminatorValue = "entity";
  @override
  late final ClassMapperBase superMapper = OkResponseMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => [Entity]);
  }

  static EntityResponse<T> _instantiate<T extends Entity>(DecodingData data) {
    return EntityResponse(data: data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static EntityResponse<T> fromMap<T extends Entity>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<EntityResponse<T>>(map);
  }

  static EntityResponse<T> fromJson<T extends Entity>(String json) {
    return ensureInitialized().decodeJson<EntityResponse<T>>(json);
  }
}

mixin EntityResponseMappable<T extends Entity> {
  String toJson() {
    return EntityResponseMapper.ensureInitialized()
        .encodeJson<EntityResponse<T>>(this as EntityResponse<T>);
  }

  Map<String, dynamic> toMap() {
    return EntityResponseMapper.ensureInitialized()
        .encodeMap<EntityResponse<T>>(this as EntityResponse<T>);
  }

  EntityResponseCopyWith<EntityResponse<T>, EntityResponse<T>,
          EntityResponse<T>, T>
      get copyWith =>
          _EntityResponseCopyWithImpl<EntityResponse<T>, EntityResponse<T>, T>(
              this as EntityResponse<T>, $identity, $identity);
  @override
  String toString() {
    return EntityResponseMapper.ensureInitialized()
        .stringifyValue(this as EntityResponse<T>);
  }

  @override
  bool operator ==(Object other) {
    return EntityResponseMapper.ensureInitialized()
        .equalsValue(this as EntityResponse<T>, other);
  }

  @override
  int get hashCode {
    return EntityResponseMapper.ensureInitialized()
        .hashValue(this as EntityResponse<T>);
  }
}

extension EntityResponseValueCopy<$R, $Out, T extends Entity>
    on ObjectCopyWith<$R, EntityResponse<T>, $Out> {
  EntityResponseCopyWith<$R, EntityResponse<T>, $Out, T>
      get $asEntityResponse => $base
          .as((v, t, t2) => _EntityResponseCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class EntityResponseCopyWith<$R, $In extends EntityResponse<T>, $Out,
    T extends Entity> implements OkResponseCopyWith<$R, $In, $Out> {
  @override
  $R call({T? data});
  EntityResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _EntityResponseCopyWithImpl<$R, $Out, T extends Entity>
    extends ClassCopyWithBase<$R, EntityResponse<T>, $Out>
    implements EntityResponseCopyWith<$R, EntityResponse<T>, $Out, T> {
  _EntityResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<EntityResponse> $mapper =
      EntityResponseMapper.ensureInitialized();
  @override
  $R call({T? data}) =>
      $apply(FieldCopyWithData({if (data != null) #data: data}));
  @override
  EntityResponse<T> $make(CopyWithData data) =>
      EntityResponse(data: data.get(#data, or: $value.data));

  @override
  EntityResponseCopyWith<$R2, EntityResponse<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _EntityResponseCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class CollectionResponseMapper extends SubClassMapperBase<CollectionResponse> {
  CollectionResponseMapper._();

  static CollectionResponseMapper? _instance;
  static CollectionResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CollectionResponseMapper._());
      OkResponseMapper.ensureInitialized().addSubMapper(_instance!);
      EntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CollectionResponse';
  @override
  Function get typeFactory =>
      <T extends Entity>(f) => f<CollectionResponse<T>>();

  static List<Entity> _$data(CollectionResponse v) => v.data;
  static dynamic _arg$data<T extends Entity>(f) => f<List<T>>();
  static const Field<CollectionResponse, List<Entity>> _f$data =
      Field('data', _$data, arg: _arg$data);
  static int _$limit(CollectionResponse v) => v.limit;
  static const Field<CollectionResponse, int> _f$limit =
      Field('limit', _$limit);
  static int _$offset(CollectionResponse v) => v.offset;
  static const Field<CollectionResponse, int> _f$offset =
      Field('offset', _$offset);
  static int _$total(CollectionResponse v) => v.total;
  static const Field<CollectionResponse, int> _f$total =
      Field('total', _$total);

  @override
  final MappableFields<CollectionResponse> fields = const {
    #data: _f$data,
    #limit: _f$limit,
    #offset: _f$offset,
    #total: _f$total,
  };

  @override
  final String discriminatorKey = 'response';
  @override
  final dynamic discriminatorValue = "collection";
  @override
  late final ClassMapperBase superMapper = OkResponseMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => [Entity]);
  }

  static CollectionResponse<T> _instantiate<T extends Entity>(
      DecodingData data) {
    return CollectionResponse(
        data: data.dec(_f$data),
        limit: data.dec(_f$limit),
        offset: data.dec(_f$offset),
        total: data.dec(_f$total));
  }

  @override
  final Function instantiate = _instantiate;

  static CollectionResponse<T> fromMap<T extends Entity>(
      Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CollectionResponse<T>>(map);
  }

  static CollectionResponse<T> fromJson<T extends Entity>(String json) {
    return ensureInitialized().decodeJson<CollectionResponse<T>>(json);
  }
}

mixin CollectionResponseMappable<T extends Entity> {
  String toJson() {
    return CollectionResponseMapper.ensureInitialized()
        .encodeJson<CollectionResponse<T>>(this as CollectionResponse<T>);
  }

  Map<String, dynamic> toMap() {
    return CollectionResponseMapper.ensureInitialized()
        .encodeMap<CollectionResponse<T>>(this as CollectionResponse<T>);
  }

  CollectionResponseCopyWith<CollectionResponse<T>, CollectionResponse<T>,
          CollectionResponse<T>, T>
      get copyWith => _CollectionResponseCopyWithImpl<
          CollectionResponse<T>,
          CollectionResponse<T>,
          T>(this as CollectionResponse<T>, $identity, $identity);
  @override
  String toString() {
    return CollectionResponseMapper.ensureInitialized()
        .stringifyValue(this as CollectionResponse<T>);
  }

  @override
  bool operator ==(Object other) {
    return CollectionResponseMapper.ensureInitialized()
        .equalsValue(this as CollectionResponse<T>, other);
  }

  @override
  int get hashCode {
    return CollectionResponseMapper.ensureInitialized()
        .hashValue(this as CollectionResponse<T>);
  }
}

extension CollectionResponseValueCopy<$R, $Out, T extends Entity>
    on ObjectCopyWith<$R, CollectionResponse<T>, $Out> {
  CollectionResponseCopyWith<$R, CollectionResponse<T>, $Out, T>
      get $asCollectionResponse => $base.as(
          (v, t, t2) => _CollectionResponseCopyWithImpl<$R, $Out, T>(v, t, t2));
}

abstract class CollectionResponseCopyWith<$R, $In extends CollectionResponse<T>,
    $Out, T extends Entity> implements OkResponseCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get data;
  @override
  $R call({List<T>? data, int? limit, int? offset, int? total});
  CollectionResponseCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CollectionResponseCopyWithImpl<$R, $Out, T extends Entity>
    extends ClassCopyWithBase<$R, CollectionResponse<T>, $Out>
    implements CollectionResponseCopyWith<$R, CollectionResponse<T>, $Out, T> {
  _CollectionResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CollectionResponse> $mapper =
      CollectionResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, T, ObjectCopyWith<$R, T, T>> get data => ListCopyWith(
      $value.data,
      (v, t) => ObjectCopyWith(v, $identity, t),
      (v) => call(data: v));
  @override
  $R call({List<T>? data, int? limit, int? offset, int? total}) =>
      $apply(FieldCopyWithData({
        if (data != null) #data: data,
        if (limit != null) #limit: limit,
        if (offset != null) #offset: offset,
        if (total != null) #total: total
      }));
  @override
  CollectionResponse<T> $make(CopyWithData data) => CollectionResponse(
      data: data.get(#data, or: $value.data),
      limit: data.get(#limit, or: $value.limit),
      offset: data.get(#offset, or: $value.offset),
      total: data.get(#total, or: $value.total));

  @override
  CollectionResponseCopyWith<$R2, CollectionResponse<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CollectionResponseCopyWithImpl<$R2, $Out2, T>($value, $cast, t);
}

class AtHomeResponseMapper extends SubClassMapperBase<AtHomeResponse> {
  AtHomeResponseMapper._();

  static AtHomeResponseMapper? _instance;
  static AtHomeResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AtHomeResponseMapper._());
      OkResponseMapper.ensureInitialized().addSubMapper(_instance!);
      AtHomeChapterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AtHomeResponse';

  static String _$baseUrl(AtHomeResponse v) => v.baseUrl;
  static const Field<AtHomeResponse, String> _f$baseUrl =
      Field('baseUrl', _$baseUrl);
  static AtHomeChapter _$chapter(AtHomeResponse v) => v.chapter;
  static const Field<AtHomeResponse, AtHomeChapter> _f$chapter =
      Field('chapter', _$chapter);

  @override
  final MappableFields<AtHomeResponse> fields = const {
    #baseUrl: _f$baseUrl,
    #chapter: _f$chapter,
  };

  @override
  final String discriminatorKey = 'response';
  @override
  final dynamic discriminatorValue = MappableClass.useAsDefault;
  @override
  late final ClassMapperBase superMapper = OkResponseMapper.ensureInitialized();

  static AtHomeResponse _instantiate(DecodingData data) {
    return AtHomeResponse(
        baseUrl: data.dec(_f$baseUrl), chapter: data.dec(_f$chapter));
  }

  @override
  final Function instantiate = _instantiate;

  static AtHomeResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AtHomeResponse>(map);
  }

  static AtHomeResponse fromJson(String json) {
    return ensureInitialized().decodeJson<AtHomeResponse>(json);
  }
}

mixin AtHomeResponseMappable {
  String toJson() {
    return AtHomeResponseMapper.ensureInitialized()
        .encodeJson<AtHomeResponse>(this as AtHomeResponse);
  }

  Map<String, dynamic> toMap() {
    return AtHomeResponseMapper.ensureInitialized()
        .encodeMap<AtHomeResponse>(this as AtHomeResponse);
  }

  AtHomeResponseCopyWith<AtHomeResponse, AtHomeResponse, AtHomeResponse>
      get copyWith =>
          _AtHomeResponseCopyWithImpl<AtHomeResponse, AtHomeResponse>(
              this as AtHomeResponse, $identity, $identity);
  @override
  String toString() {
    return AtHomeResponseMapper.ensureInitialized()
        .stringifyValue(this as AtHomeResponse);
  }

  @override
  bool operator ==(Object other) {
    return AtHomeResponseMapper.ensureInitialized()
        .equalsValue(this as AtHomeResponse, other);
  }

  @override
  int get hashCode {
    return AtHomeResponseMapper.ensureInitialized()
        .hashValue(this as AtHomeResponse);
  }
}

extension AtHomeResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AtHomeResponse, $Out> {
  AtHomeResponseCopyWith<$R, AtHomeResponse, $Out> get $asAtHomeResponse =>
      $base.as((v, t, t2) => _AtHomeResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AtHomeResponseCopyWith<$R, $In extends AtHomeResponse, $Out>
    implements OkResponseCopyWith<$R, $In, $Out> {
  AtHomeChapterCopyWith<$R, AtHomeChapter, AtHomeChapter> get chapter;
  @override
  $R call({String? baseUrl, AtHomeChapter? chapter});
  AtHomeResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AtHomeResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AtHomeResponse, $Out>
    implements AtHomeResponseCopyWith<$R, AtHomeResponse, $Out> {
  _AtHomeResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AtHomeResponse> $mapper =
      AtHomeResponseMapper.ensureInitialized();
  @override
  AtHomeChapterCopyWith<$R, AtHomeChapter, AtHomeChapter> get chapter =>
      $value.chapter.copyWith.$chain((v) => call(chapter: v));
  @override
  $R call({String? baseUrl, AtHomeChapter? chapter}) =>
      $apply(FieldCopyWithData({
        if (baseUrl != null) #baseUrl: baseUrl,
        if (chapter != null) #chapter: chapter
      }));
  @override
  AtHomeResponse $make(CopyWithData data) => AtHomeResponse(
      baseUrl: data.get(#baseUrl, or: $value.baseUrl),
      chapter: data.get(#chapter, or: $value.chapter));

  @override
  AtHomeResponseCopyWith<$R2, AtHomeResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AtHomeResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class AtHomeChapterMapper extends ClassMapperBase<AtHomeChapter> {
  AtHomeChapterMapper._();

  static AtHomeChapterMapper? _instance;
  static AtHomeChapterMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AtHomeChapterMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AtHomeChapter';

  static String _$hash(AtHomeChapter v) => v.hash;
  static const Field<AtHomeChapter, String> _f$hash = Field('hash', _$hash);
  static List<String> _$data(AtHomeChapter v) => v.data;
  static const Field<AtHomeChapter, List<String>> _f$data =
      Field('data', _$data);
  static List<String> _$dataSaver(AtHomeChapter v) => v.dataSaver;
  static const Field<AtHomeChapter, List<String>> _f$dataSaver =
      Field('dataSaver', _$dataSaver);

  @override
  final MappableFields<AtHomeChapter> fields = const {
    #hash: _f$hash,
    #data: _f$data,
    #dataSaver: _f$dataSaver,
  };

  static AtHomeChapter _instantiate(DecodingData data) {
    return AtHomeChapter(
        hash: data.dec(_f$hash),
        data: data.dec(_f$data),
        dataSaver: data.dec(_f$dataSaver));
  }

  @override
  final Function instantiate = _instantiate;

  static AtHomeChapter fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AtHomeChapter>(map);
  }

  static AtHomeChapter fromJson(String json) {
    return ensureInitialized().decodeJson<AtHomeChapter>(json);
  }
}

mixin AtHomeChapterMappable {
  String toJson() {
    return AtHomeChapterMapper.ensureInitialized()
        .encodeJson<AtHomeChapter>(this as AtHomeChapter);
  }

  Map<String, dynamic> toMap() {
    return AtHomeChapterMapper.ensureInitialized()
        .encodeMap<AtHomeChapter>(this as AtHomeChapter);
  }

  AtHomeChapterCopyWith<AtHomeChapter, AtHomeChapter, AtHomeChapter>
      get copyWith => _AtHomeChapterCopyWithImpl<AtHomeChapter, AtHomeChapter>(
          this as AtHomeChapter, $identity, $identity);
  @override
  String toString() {
    return AtHomeChapterMapper.ensureInitialized()
        .stringifyValue(this as AtHomeChapter);
  }

  @override
  bool operator ==(Object other) {
    return AtHomeChapterMapper.ensureInitialized()
        .equalsValue(this as AtHomeChapter, other);
  }

  @override
  int get hashCode {
    return AtHomeChapterMapper.ensureInitialized()
        .hashValue(this as AtHomeChapter);
  }
}

extension AtHomeChapterValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AtHomeChapter, $Out> {
  AtHomeChapterCopyWith<$R, AtHomeChapter, $Out> get $asAtHomeChapter =>
      $base.as((v, t, t2) => _AtHomeChapterCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AtHomeChapterCopyWith<$R, $In extends AtHomeChapter, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get data;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get dataSaver;
  $R call({String? hash, List<String>? data, List<String>? dataSaver});
  AtHomeChapterCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AtHomeChapterCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AtHomeChapter, $Out>
    implements AtHomeChapterCopyWith<$R, AtHomeChapter, $Out> {
  _AtHomeChapterCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AtHomeChapter> $mapper =
      AtHomeChapterMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get data =>
      ListCopyWith($value.data, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(data: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get dataSaver =>
      ListCopyWith($value.dataSaver, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(dataSaver: v));
  @override
  $R call({String? hash, List<String>? data, List<String>? dataSaver}) =>
      $apply(FieldCopyWithData({
        if (hash != null) #hash: hash,
        if (data != null) #data: data,
        if (dataSaver != null) #dataSaver: dataSaver
      }));
  @override
  AtHomeChapter $make(CopyWithData data) => AtHomeChapter(
      hash: data.get(#hash, or: $value.hash),
      data: data.get(#data, or: $value.data),
      dataSaver: data.get(#dataSaver, or: $value.dataSaver));

  @override
  AtHomeChapterCopyWith<$R2, AtHomeChapter, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AtHomeChapterCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ErrorResponseMapper extends SubClassMapperBase<ErrorResponse> {
  ErrorResponseMapper._();

  static ErrorResponseMapper? _instance;
  static ErrorResponseMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorResponseMapper._());
      ResponseMapper.ensureInitialized().addSubMapper(_instance!);
      ErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ErrorResponse';

  static List<Error> _$errors(ErrorResponse v) => v.errors;
  static const Field<ErrorResponse, List<Error>> _f$errors =
      Field('errors', _$errors);

  @override
  final MappableFields<ErrorResponse> fields = const {
    #errors: _f$errors,
  };

  @override
  final String discriminatorKey = 'result';
  @override
  final dynamic discriminatorValue = "error";
  @override
  late final ClassMapperBase superMapper = ResponseMapper.ensureInitialized();

  static ErrorResponse _instantiate(DecodingData data) {
    return ErrorResponse(errors: data.dec(_f$errors));
  }

  @override
  final Function instantiate = _instantiate;

  static ErrorResponse fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ErrorResponse>(map);
  }

  static ErrorResponse fromJson(String json) {
    return ensureInitialized().decodeJson<ErrorResponse>(json);
  }
}

mixin ErrorResponseMappable {
  String toJson() {
    return ErrorResponseMapper.ensureInitialized()
        .encodeJson<ErrorResponse>(this as ErrorResponse);
  }

  Map<String, dynamic> toMap() {
    return ErrorResponseMapper.ensureInitialized()
        .encodeMap<ErrorResponse>(this as ErrorResponse);
  }

  ErrorResponseCopyWith<ErrorResponse, ErrorResponse, ErrorResponse>
      get copyWith => _ErrorResponseCopyWithImpl<ErrorResponse, ErrorResponse>(
          this as ErrorResponse, $identity, $identity);
  @override
  String toString() {
    return ErrorResponseMapper.ensureInitialized()
        .stringifyValue(this as ErrorResponse);
  }

  @override
  bool operator ==(Object other) {
    return ErrorResponseMapper.ensureInitialized()
        .equalsValue(this as ErrorResponse, other);
  }

  @override
  int get hashCode {
    return ErrorResponseMapper.ensureInitialized()
        .hashValue(this as ErrorResponse);
  }
}

extension ErrorResponseValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ErrorResponse, $Out> {
  ErrorResponseCopyWith<$R, ErrorResponse, $Out> get $asErrorResponse =>
      $base.as((v, t, t2) => _ErrorResponseCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ErrorResponseCopyWith<$R, $In extends ErrorResponse, $Out>
    implements ResponseCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Error, ErrorCopyWith<$R, Error, Error>> get errors;
  @override
  $R call({List<Error>? errors});
  ErrorResponseCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorResponseCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ErrorResponse, $Out>
    implements ErrorResponseCopyWith<$R, ErrorResponse, $Out> {
  _ErrorResponseCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ErrorResponse> $mapper =
      ErrorResponseMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Error, ErrorCopyWith<$R, Error, Error>> get errors =>
      ListCopyWith($value.errors, (v, t) => v.copyWith.$chain(t),
          (v) => call(errors: v));
  @override
  $R call({List<Error>? errors}) =>
      $apply(FieldCopyWithData({if (errors != null) #errors: errors}));
  @override
  ErrorResponse $make(CopyWithData data) =>
      ErrorResponse(errors: data.get(#errors, or: $value.errors));

  @override
  ErrorResponseCopyWith<$R2, ErrorResponse, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ErrorResponseCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ErrorMapper extends ClassMapperBase<Error> {
  ErrorMapper._();

  static ErrorMapper? _instance;
  static ErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'Error';

  static Uuid _$id(Error v) => v.id;
  static const Field<Error, Uuid> _f$id = Field('id', _$id);
  static int _$status(Error v) => v.status;
  static const Field<Error, int> _f$status = Field('status', _$status);
  static String _$title(Error v) => v.title;
  static const Field<Error, String> _f$title = Field('title', _$title);
  static String? _$detail(Error v) => v.detail;
  static const Field<Error, String> _f$detail =
      Field('detail', _$detail, opt: true);
  static String? _$context(Error v) => v.context;
  static const Field<Error, String> _f$context =
      Field('context', _$context, opt: true);

  @override
  final MappableFields<Error> fields = const {
    #id: _f$id,
    #status: _f$status,
    #title: _f$title,
    #detail: _f$detail,
    #context: _f$context,
  };

  static Error _instantiate(DecodingData data) {
    return Error(
        id: data.dec(_f$id),
        status: data.dec(_f$status),
        title: data.dec(_f$title),
        detail: data.dec(_f$detail),
        context: data.dec(_f$context));
  }

  @override
  final Function instantiate = _instantiate;

  static Error fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Error>(map);
  }

  static Error fromJson(String json) {
    return ensureInitialized().decodeJson<Error>(json);
  }
}

mixin ErrorMappable {
  String toJson() {
    return ErrorMapper.ensureInitialized().encodeJson<Error>(this as Error);
  }

  Map<String, dynamic> toMap() {
    return ErrorMapper.ensureInitialized().encodeMap<Error>(this as Error);
  }

  ErrorCopyWith<Error, Error, Error> get copyWith =>
      _ErrorCopyWithImpl<Error, Error>(this as Error, $identity, $identity);
  @override
  String toString() {
    return ErrorMapper.ensureInitialized().stringifyValue(this as Error);
  }

  @override
  bool operator ==(Object other) {
    return ErrorMapper.ensureInitialized().equalsValue(this as Error, other);
  }

  @override
  int get hashCode {
    return ErrorMapper.ensureInitialized().hashValue(this as Error);
  }
}

extension ErrorValueCopy<$R, $Out> on ObjectCopyWith<$R, Error, $Out> {
  ErrorCopyWith<$R, Error, $Out> get $asError =>
      $base.as((v, t, t2) => _ErrorCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ErrorCopyWith<$R, $In extends Error, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {Uuid? id, int? status, String? title, String? detail, String? context});
  ErrorCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Error, $Out>
    implements ErrorCopyWith<$R, Error, $Out> {
  _ErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Error> $mapper = ErrorMapper.ensureInitialized();
  @override
  $R call(
          {Uuid? id,
          int? status,
          String? title,
          Object? detail = $none,
          Object? context = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (status != null) #status: status,
        if (title != null) #title: title,
        if (detail != $none) #detail: detail,
        if (context != $none) #context: context
      }));
  @override
  Error $make(CopyWithData data) => Error(
      id: data.get(#id, or: $value.id),
      status: data.get(#status, or: $value.status),
      title: data.get(#title, or: $value.title),
      detail: data.get(#detail, or: $value.detail),
      context: data.get(#context, or: $value.context));

  @override
  ErrorCopyWith<$R2, Error, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ErrorCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
