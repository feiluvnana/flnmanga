// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'browse_bloc.dart';

class BrowseMangasFetchedMapper extends ClassMapperBase<BrowseMangasFetched> {
  BrowseMangasFetchedMapper._();

  static BrowseMangasFetchedMapper? _instance;
  static BrowseMangasFetchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrowseMangasFetchedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BrowseMangasFetched';

  @override
  final MappableFields<BrowseMangasFetched> fields = const {};

  static BrowseMangasFetched _instantiate(DecodingData data) {
    return BrowseMangasFetched();
  }

  @override
  final Function instantiate = _instantiate;

  static BrowseMangasFetched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BrowseMangasFetched>(map);
  }

  static BrowseMangasFetched fromJson(String json) {
    return ensureInitialized().decodeJson<BrowseMangasFetched>(json);
  }
}

mixin BrowseMangasFetchedMappable {
  String toJson() {
    return BrowseMangasFetchedMapper.ensureInitialized()
        .encodeJson<BrowseMangasFetched>(this as BrowseMangasFetched);
  }

  Map<String, dynamic> toMap() {
    return BrowseMangasFetchedMapper.ensureInitialized()
        .encodeMap<BrowseMangasFetched>(this as BrowseMangasFetched);
  }

  BrowseMangasFetchedCopyWith<BrowseMangasFetched, BrowseMangasFetched,
      BrowseMangasFetched> get copyWith => _BrowseMangasFetchedCopyWithImpl<
          BrowseMangasFetched, BrowseMangasFetched>(
      this as BrowseMangasFetched, $identity, $identity);
  @override
  String toString() {
    return BrowseMangasFetchedMapper.ensureInitialized()
        .stringifyValue(this as BrowseMangasFetched);
  }

  @override
  bool operator ==(Object other) {
    return BrowseMangasFetchedMapper.ensureInitialized()
        .equalsValue(this as BrowseMangasFetched, other);
  }

  @override
  int get hashCode {
    return BrowseMangasFetchedMapper.ensureInitialized()
        .hashValue(this as BrowseMangasFetched);
  }
}

extension BrowseMangasFetchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BrowseMangasFetched, $Out> {
  BrowseMangasFetchedCopyWith<$R, BrowseMangasFetched, $Out>
      get $asBrowseMangasFetched => $base.as(
          (v, t, t2) => _BrowseMangasFetchedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BrowseMangasFetchedCopyWith<$R, $In extends BrowseMangasFetched,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  BrowseMangasFetchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BrowseMangasFetchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BrowseMangasFetched, $Out>
    implements BrowseMangasFetchedCopyWith<$R, BrowseMangasFetched, $Out> {
  _BrowseMangasFetchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BrowseMangasFetched> $mapper =
      BrowseMangasFetchedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  BrowseMangasFetched $make(CopyWithData data) => BrowseMangasFetched();

  @override
  BrowseMangasFetchedCopyWith<$R2, BrowseMangasFetched, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BrowseMangasFetchedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BrowseSearchParamsChangedMapper
    extends ClassMapperBase<BrowseSearchParamsChanged> {
  BrowseSearchParamsChangedMapper._();

  static BrowseSearchParamsChangedMapper? _instance;
  static BrowseSearchParamsChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = BrowseSearchParamsChangedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BrowseSearchParamsChanged';

  static String? _$title(BrowseSearchParamsChanged v) => v.title;
  static const Field<BrowseSearchParamsChanged, String> _f$title =
      Field('title', _$title, opt: true);

  @override
  final MappableFields<BrowseSearchParamsChanged> fields = const {
    #title: _f$title,
  };

  static BrowseSearchParamsChanged _instantiate(DecodingData data) {
    return BrowseSearchParamsChanged(title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static BrowseSearchParamsChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BrowseSearchParamsChanged>(map);
  }

  static BrowseSearchParamsChanged fromJson(String json) {
    return ensureInitialized().decodeJson<BrowseSearchParamsChanged>(json);
  }
}

mixin BrowseSearchParamsChangedMappable {
  String toJson() {
    return BrowseSearchParamsChangedMapper.ensureInitialized()
        .encodeJson<BrowseSearchParamsChanged>(
            this as BrowseSearchParamsChanged);
  }

  Map<String, dynamic> toMap() {
    return BrowseSearchParamsChangedMapper.ensureInitialized()
        .encodeMap<BrowseSearchParamsChanged>(
            this as BrowseSearchParamsChanged);
  }

  BrowseSearchParamsChangedCopyWith<BrowseSearchParamsChanged,
          BrowseSearchParamsChanged, BrowseSearchParamsChanged>
      get copyWith => _BrowseSearchParamsChangedCopyWithImpl<
              BrowseSearchParamsChanged, BrowseSearchParamsChanged>(
          this as BrowseSearchParamsChanged, $identity, $identity);
  @override
  String toString() {
    return BrowseSearchParamsChangedMapper.ensureInitialized()
        .stringifyValue(this as BrowseSearchParamsChanged);
  }

  @override
  bool operator ==(Object other) {
    return BrowseSearchParamsChangedMapper.ensureInitialized()
        .equalsValue(this as BrowseSearchParamsChanged, other);
  }

  @override
  int get hashCode {
    return BrowseSearchParamsChangedMapper.ensureInitialized()
        .hashValue(this as BrowseSearchParamsChanged);
  }
}

extension BrowseSearchParamsChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BrowseSearchParamsChanged, $Out> {
  BrowseSearchParamsChangedCopyWith<$R, BrowseSearchParamsChanged, $Out>
      get $asBrowseSearchParamsChanged => $base.as((v, t, t2) =>
          _BrowseSearchParamsChangedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BrowseSearchParamsChangedCopyWith<
    $R,
    $In extends BrowseSearchParamsChanged,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title});
  BrowseSearchParamsChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BrowseSearchParamsChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BrowseSearchParamsChanged, $Out>
    implements
        BrowseSearchParamsChangedCopyWith<$R, BrowseSearchParamsChanged, $Out> {
  _BrowseSearchParamsChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BrowseSearchParamsChanged> $mapper =
      BrowseSearchParamsChangedMapper.ensureInitialized();
  @override
  $R call({Object? title = $none}) =>
      $apply(FieldCopyWithData({if (title != $none) #title: title}));
  @override
  BrowseSearchParamsChanged $make(CopyWithData data) =>
      BrowseSearchParamsChanged(title: data.get(#title, or: $value.title));

  @override
  BrowseSearchParamsChangedCopyWith<$R2, BrowseSearchParamsChanged, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BrowseSearchParamsChangedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BrowserMangasRefreshedMapper
    extends ClassMapperBase<BrowserMangasRefreshed> {
  BrowserMangasRefreshedMapper._();

  static BrowserMangasRefreshedMapper? _instance;
  static BrowserMangasRefreshedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrowserMangasRefreshedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BrowserMangasRefreshed';

  @override
  final MappableFields<BrowserMangasRefreshed> fields = const {};

  static BrowserMangasRefreshed _instantiate(DecodingData data) {
    return BrowserMangasRefreshed();
  }

  @override
  final Function instantiate = _instantiate;

  static BrowserMangasRefreshed fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BrowserMangasRefreshed>(map);
  }

  static BrowserMangasRefreshed fromJson(String json) {
    return ensureInitialized().decodeJson<BrowserMangasRefreshed>(json);
  }
}

mixin BrowserMangasRefreshedMappable {
  String toJson() {
    return BrowserMangasRefreshedMapper.ensureInitialized()
        .encodeJson<BrowserMangasRefreshed>(this as BrowserMangasRefreshed);
  }

  Map<String, dynamic> toMap() {
    return BrowserMangasRefreshedMapper.ensureInitialized()
        .encodeMap<BrowserMangasRefreshed>(this as BrowserMangasRefreshed);
  }

  BrowserMangasRefreshedCopyWith<BrowserMangasRefreshed, BrowserMangasRefreshed,
          BrowserMangasRefreshed>
      get copyWith => _BrowserMangasRefreshedCopyWithImpl<
              BrowserMangasRefreshed, BrowserMangasRefreshed>(
          this as BrowserMangasRefreshed, $identity, $identity);
  @override
  String toString() {
    return BrowserMangasRefreshedMapper.ensureInitialized()
        .stringifyValue(this as BrowserMangasRefreshed);
  }

  @override
  bool operator ==(Object other) {
    return BrowserMangasRefreshedMapper.ensureInitialized()
        .equalsValue(this as BrowserMangasRefreshed, other);
  }

  @override
  int get hashCode {
    return BrowserMangasRefreshedMapper.ensureInitialized()
        .hashValue(this as BrowserMangasRefreshed);
  }
}

extension BrowserMangasRefreshedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BrowserMangasRefreshed, $Out> {
  BrowserMangasRefreshedCopyWith<$R, BrowserMangasRefreshed, $Out>
      get $asBrowserMangasRefreshed => $base.as((v, t, t2) =>
          _BrowserMangasRefreshedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BrowserMangasRefreshedCopyWith<
    $R,
    $In extends BrowserMangasRefreshed,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  BrowserMangasRefreshedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BrowserMangasRefreshedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BrowserMangasRefreshed, $Out>
    implements
        BrowserMangasRefreshedCopyWith<$R, BrowserMangasRefreshed, $Out> {
  _BrowserMangasRefreshedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BrowserMangasRefreshed> $mapper =
      BrowserMangasRefreshedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  BrowserMangasRefreshed $make(CopyWithData data) => BrowserMangasRefreshed();

  @override
  BrowserMangasRefreshedCopyWith<$R2, BrowserMangasRefreshed, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _BrowserMangasRefreshedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BrowseStatusMapper extends EnumMapper<BrowseStatus> {
  BrowseStatusMapper._();

  static BrowseStatusMapper? _instance;
  static BrowseStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrowseStatusMapper._());
    }
    return _instance!;
  }

  static BrowseStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  BrowseStatus decode(dynamic value) {
    switch (value) {
      case r'loading':
        return BrowseStatus.loading;
      case r'data':
        return BrowseStatus.data;
      case r'error':
        return BrowseStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(BrowseStatus self) {
    switch (self) {
      case BrowseStatus.loading:
        return r'loading';
      case BrowseStatus.data:
        return r'data';
      case BrowseStatus.error:
        return r'error';
    }
  }
}

extension BrowseStatusMapperExtension on BrowseStatus {
  String toValue() {
    BrowseStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<BrowseStatus>(this) as String;
  }
}

class BrowseStateMapper extends ClassMapperBase<BrowseState> {
  BrowseStateMapper._();

  static BrowseStateMapper? _instance;
  static BrowseStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrowseStateMapper._());
      BrowseStatusMapper.ensureInitialized();
      MangaMapper.ensureInitialized();
      BrowseSearchParamsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BrowseState';

  static BrowseStatus _$status(BrowseState v) => v.status;
  static const Field<BrowseState, BrowseStatus> _f$status =
      Field('status', _$status);
  static List<List<Manga>> _$mangas(BrowseState v) => v.mangas;
  static const Field<BrowseState, List<List<Manga>>> _f$mangas =
      Field('mangas', _$mangas, opt: true, def: const []);
  static List<int> _$offsets(BrowseState v) => v.offsets;
  static const Field<BrowseState, List<int>> _f$offsets =
      Field('offsets', _$offsets, opt: true, def: const []);
  static int _$limit(BrowseState v) => v.limit;
  static const Field<BrowseState, int> _f$limit =
      Field('limit', _$limit, opt: true, def: 18);
  static int _$total(BrowseState v) => v.total;
  static const Field<BrowseState, int> _f$total =
      Field('total', _$total, opt: true, def: 0);
  static bool _$hasNextPage(BrowseState v) => v.hasNextPage;
  static const Field<BrowseState, bool> _f$hasNextPage =
      Field('hasNextPage', _$hasNextPage, opt: true, def: true);
  static BrowseSearchParams _$searchParams(BrowseState v) => v.searchParams;
  static const Field<BrowseState, BrowseSearchParams> _f$searchParams = Field(
      'searchParams', _$searchParams,
      opt: true, def: const BrowseSearchParams());

  @override
  final MappableFields<BrowseState> fields = const {
    #status: _f$status,
    #mangas: _f$mangas,
    #offsets: _f$offsets,
    #limit: _f$limit,
    #total: _f$total,
    #hasNextPage: _f$hasNextPage,
    #searchParams: _f$searchParams,
  };

  static BrowseState _instantiate(DecodingData data) {
    return BrowseState(
        status: data.dec(_f$status),
        mangas: data.dec(_f$mangas),
        offsets: data.dec(_f$offsets),
        limit: data.dec(_f$limit),
        total: data.dec(_f$total),
        hasNextPage: data.dec(_f$hasNextPage),
        searchParams: data.dec(_f$searchParams));
  }

  @override
  final Function instantiate = _instantiate;

  static BrowseState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BrowseState>(map);
  }

  static BrowseState fromJson(String json) {
    return ensureInitialized().decodeJson<BrowseState>(json);
  }
}

mixin BrowseStateMappable {
  String toJson() {
    return BrowseStateMapper.ensureInitialized()
        .encodeJson<BrowseState>(this as BrowseState);
  }

  Map<String, dynamic> toMap() {
    return BrowseStateMapper.ensureInitialized()
        .encodeMap<BrowseState>(this as BrowseState);
  }

  BrowseStateCopyWith<BrowseState, BrowseState, BrowseState> get copyWith =>
      _BrowseStateCopyWithImpl<BrowseState, BrowseState>(
          this as BrowseState, $identity, $identity);
  @override
  String toString() {
    return BrowseStateMapper.ensureInitialized()
        .stringifyValue(this as BrowseState);
  }

  @override
  bool operator ==(Object other) {
    return BrowseStateMapper.ensureInitialized()
        .equalsValue(this as BrowseState, other);
  }

  @override
  int get hashCode {
    return BrowseStateMapper.ensureInitialized().hashValue(this as BrowseState);
  }
}

extension BrowseStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BrowseState, $Out> {
  BrowseStateCopyWith<$R, BrowseState, $Out> get $asBrowseState =>
      $base.as((v, t, t2) => _BrowseStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BrowseStateCopyWith<$R, $In extends BrowseState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, List<Manga>, ObjectCopyWith<$R, List<Manga>, List<Manga>>>
      get mangas;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets;
  BrowseSearchParamsCopyWith<$R, BrowseSearchParams, BrowseSearchParams>
      get searchParams;
  $R call(
      {BrowseStatus? status,
      List<List<Manga>>? mangas,
      List<int>? offsets,
      int? limit,
      int? total,
      bool? hasNextPage,
      BrowseSearchParams? searchParams});
  BrowseStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _BrowseStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BrowseState, $Out>
    implements BrowseStateCopyWith<$R, BrowseState, $Out> {
  _BrowseStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BrowseState> $mapper =
      BrowseStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, List<Manga>, ObjectCopyWith<$R, List<Manga>, List<Manga>>>
      get mangas => ListCopyWith($value.mangas,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(mangas: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets =>
      ListCopyWith($value.offsets, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(offsets: v));
  @override
  BrowseSearchParamsCopyWith<$R, BrowseSearchParams, BrowseSearchParams>
      get searchParams =>
          $value.searchParams.copyWith.$chain((v) => call(searchParams: v));
  @override
  $R call(
          {BrowseStatus? status,
          List<List<Manga>>? mangas,
          List<int>? offsets,
          int? limit,
          int? total,
          bool? hasNextPage,
          BrowseSearchParams? searchParams}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (mangas != null) #mangas: mangas,
        if (offsets != null) #offsets: offsets,
        if (limit != null) #limit: limit,
        if (total != null) #total: total,
        if (hasNextPage != null) #hasNextPage: hasNextPage,
        if (searchParams != null) #searchParams: searchParams
      }));
  @override
  BrowseState $make(CopyWithData data) => BrowseState(
      status: data.get(#status, or: $value.status),
      mangas: data.get(#mangas, or: $value.mangas),
      offsets: data.get(#offsets, or: $value.offsets),
      limit: data.get(#limit, or: $value.limit),
      total: data.get(#total, or: $value.total),
      hasNextPage: data.get(#hasNextPage, or: $value.hasNextPage),
      searchParams: data.get(#searchParams, or: $value.searchParams));

  @override
  BrowseStateCopyWith<$R2, BrowseState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BrowseStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class BrowseSearchParamsMapper extends ClassMapperBase<BrowseSearchParams> {
  BrowseSearchParamsMapper._();

  static BrowseSearchParamsMapper? _instance;
  static BrowseSearchParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrowseSearchParamsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'BrowseSearchParams';

  static String? _$title(BrowseSearchParams v) => v.title;
  static const Field<BrowseSearchParams, String> _f$title =
      Field('title', _$title, opt: true);

  @override
  final MappableFields<BrowseSearchParams> fields = const {
    #title: _f$title,
  };

  static BrowseSearchParams _instantiate(DecodingData data) {
    return BrowseSearchParams(title: data.dec(_f$title));
  }

  @override
  final Function instantiate = _instantiate;

  static BrowseSearchParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BrowseSearchParams>(map);
  }

  static BrowseSearchParams fromJson(String json) {
    return ensureInitialized().decodeJson<BrowseSearchParams>(json);
  }
}

mixin BrowseSearchParamsMappable {
  String toJson() {
    return BrowseSearchParamsMapper.ensureInitialized()
        .encodeJson<BrowseSearchParams>(this as BrowseSearchParams);
  }

  Map<String, dynamic> toMap() {
    return BrowseSearchParamsMapper.ensureInitialized()
        .encodeMap<BrowseSearchParams>(this as BrowseSearchParams);
  }

  BrowseSearchParamsCopyWith<BrowseSearchParams, BrowseSearchParams,
          BrowseSearchParams>
      get copyWith => _BrowseSearchParamsCopyWithImpl<BrowseSearchParams,
          BrowseSearchParams>(this as BrowseSearchParams, $identity, $identity);
  @override
  String toString() {
    return BrowseSearchParamsMapper.ensureInitialized()
        .stringifyValue(this as BrowseSearchParams);
  }

  @override
  bool operator ==(Object other) {
    return BrowseSearchParamsMapper.ensureInitialized()
        .equalsValue(this as BrowseSearchParams, other);
  }

  @override
  int get hashCode {
    return BrowseSearchParamsMapper.ensureInitialized()
        .hashValue(this as BrowseSearchParams);
  }
}

extension BrowseSearchParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, BrowseSearchParams, $Out> {
  BrowseSearchParamsCopyWith<$R, BrowseSearchParams, $Out>
      get $asBrowseSearchParams => $base.as(
          (v, t, t2) => _BrowseSearchParamsCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class BrowseSearchParamsCopyWith<$R, $In extends BrowseSearchParams,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? title});
  BrowseSearchParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _BrowseSearchParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, BrowseSearchParams, $Out>
    implements BrowseSearchParamsCopyWith<$R, BrowseSearchParams, $Out> {
  _BrowseSearchParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<BrowseSearchParams> $mapper =
      BrowseSearchParamsMapper.ensureInitialized();
  @override
  $R call({Object? title = $none}) =>
      $apply(FieldCopyWithData({if (title != $none) #title: title}));
  @override
  BrowseSearchParams $make(CopyWithData data) =>
      BrowseSearchParams(title: data.get(#title, or: $value.title));

  @override
  BrowseSearchParamsCopyWith<$R2, BrowseSearchParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _BrowseSearchParamsCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
