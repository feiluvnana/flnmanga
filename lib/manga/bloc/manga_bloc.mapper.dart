// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'manga_bloc.dart';

class MangaLoadedMapper extends ClassMapperBase<MangaLoaded> {
  MangaLoadedMapper._();

  static MangaLoadedMapper? _instance;
  static MangaLoadedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaLoadedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MangaLoaded';

  static Uuid _$mangaId(MangaLoaded v) => v.mangaId;
  static const Field<MangaLoaded, Uuid> _f$mangaId =
      Field('mangaId', _$mangaId);

  @override
  final MappableFields<MangaLoaded> fields = const {
    #mangaId: _f$mangaId,
  };

  static MangaLoaded _instantiate(DecodingData data) {
    return MangaLoaded(mangaId: data.dec(_f$mangaId));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaLoaded fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaLoaded>(map);
  }

  static MangaLoaded fromJson(String json) {
    return ensureInitialized().decodeJson<MangaLoaded>(json);
  }
}

mixin MangaLoadedMappable {
  String toJson() {
    return MangaLoadedMapper.ensureInitialized()
        .encodeJson<MangaLoaded>(this as MangaLoaded);
  }

  Map<String, dynamic> toMap() {
    return MangaLoadedMapper.ensureInitialized()
        .encodeMap<MangaLoaded>(this as MangaLoaded);
  }

  MangaLoadedCopyWith<MangaLoaded, MangaLoaded, MangaLoaded> get copyWith =>
      _MangaLoadedCopyWithImpl<MangaLoaded, MangaLoaded>(
          this as MangaLoaded, $identity, $identity);
  @override
  String toString() {
    return MangaLoadedMapper.ensureInitialized()
        .stringifyValue(this as MangaLoaded);
  }

  @override
  bool operator ==(Object other) {
    return MangaLoadedMapper.ensureInitialized()
        .equalsValue(this as MangaLoaded, other);
  }

  @override
  int get hashCode {
    return MangaLoadedMapper.ensureInitialized().hashValue(this as MangaLoaded);
  }
}

extension MangaLoadedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaLoaded, $Out> {
  MangaLoadedCopyWith<$R, MangaLoaded, $Out> get $asMangaLoaded =>
      $base.as((v, t, t2) => _MangaLoadedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaLoadedCopyWith<$R, $In extends MangaLoaded, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Uuid? mangaId});
  MangaLoadedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MangaLoadedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaLoaded, $Out>
    implements MangaLoadedCopyWith<$R, MangaLoaded, $Out> {
  _MangaLoadedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaLoaded> $mapper =
      MangaLoadedMapper.ensureInitialized();
  @override
  $R call({Uuid? mangaId}) =>
      $apply(FieldCopyWithData({if (mangaId != null) #mangaId: mangaId}));
  @override
  MangaLoaded $make(CopyWithData data) =>
      MangaLoaded(mangaId: data.get(#mangaId, or: $value.mangaId));

  @override
  MangaLoadedCopyWith<$R2, MangaLoaded, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaLoadedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaChaptersFetchedMapper extends ClassMapperBase<MangaChaptersFetched> {
  MangaChaptersFetchedMapper._();

  static MangaChaptersFetchedMapper? _instance;
  static MangaChaptersFetchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaChaptersFetchedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MangaChaptersFetched';

  @override
  final MappableFields<MangaChaptersFetched> fields = const {};

  static MangaChaptersFetched _instantiate(DecodingData data) {
    return MangaChaptersFetched();
  }

  @override
  final Function instantiate = _instantiate;

  static MangaChaptersFetched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaChaptersFetched>(map);
  }

  static MangaChaptersFetched fromJson(String json) {
    return ensureInitialized().decodeJson<MangaChaptersFetched>(json);
  }
}

mixin MangaChaptersFetchedMappable {
  String toJson() {
    return MangaChaptersFetchedMapper.ensureInitialized()
        .encodeJson<MangaChaptersFetched>(this as MangaChaptersFetched);
  }

  Map<String, dynamic> toMap() {
    return MangaChaptersFetchedMapper.ensureInitialized()
        .encodeMap<MangaChaptersFetched>(this as MangaChaptersFetched);
  }

  MangaChaptersFetchedCopyWith<MangaChaptersFetched, MangaChaptersFetched,
      MangaChaptersFetched> get copyWith => _MangaChaptersFetchedCopyWithImpl<
          MangaChaptersFetched, MangaChaptersFetched>(
      this as MangaChaptersFetched, $identity, $identity);
  @override
  String toString() {
    return MangaChaptersFetchedMapper.ensureInitialized()
        .stringifyValue(this as MangaChaptersFetched);
  }

  @override
  bool operator ==(Object other) {
    return MangaChaptersFetchedMapper.ensureInitialized()
        .equalsValue(this as MangaChaptersFetched, other);
  }

  @override
  int get hashCode {
    return MangaChaptersFetchedMapper.ensureInitialized()
        .hashValue(this as MangaChaptersFetched);
  }
}

extension MangaChaptersFetchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaChaptersFetched, $Out> {
  MangaChaptersFetchedCopyWith<$R, MangaChaptersFetched, $Out>
      get $asMangaChaptersFetched => $base.as(
          (v, t, t2) => _MangaChaptersFetchedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaChaptersFetchedCopyWith<
    $R,
    $In extends MangaChaptersFetched,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MangaChaptersFetchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaChaptersFetchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaChaptersFetched, $Out>
    implements MangaChaptersFetchedCopyWith<$R, MangaChaptersFetched, $Out> {
  _MangaChaptersFetchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaChaptersFetched> $mapper =
      MangaChaptersFetchedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  MangaChaptersFetched $make(CopyWithData data) => MangaChaptersFetched();

  @override
  MangaChaptersFetchedCopyWith<$R2, MangaChaptersFetched, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _MangaChaptersFetchedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaStateMapper extends ClassMapperBase<MangaState> {
  MangaStateMapper._();

  static MangaStateMapper? _instance;
  static MangaStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaStateMapper._());
      MangaInitialStateMapper.ensureInitialized();
      MangaLoadedStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaState';

  @override
  final MappableFields<MangaState> fields = const {};

  static MangaState _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('MangaState');
  }

  @override
  final Function instantiate = _instantiate;

  static MangaState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaState>(map);
  }

  static MangaState fromJson(String json) {
    return ensureInitialized().decodeJson<MangaState>(json);
  }
}

mixin MangaStateMappable {
  String toJson();
  Map<String, dynamic> toMap();
  MangaStateCopyWith<MangaState, MangaState, MangaState> get copyWith;
}

abstract class MangaStateCopyWith<$R, $In extends MangaState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  MangaStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class MangaInitialStateMapper extends ClassMapperBase<MangaInitialState> {
  MangaInitialStateMapper._();

  static MangaInitialStateMapper? _instance;
  static MangaInitialStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaInitialStateMapper._());
      MangaStateMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaInitialState';

  @override
  final MappableFields<MangaInitialState> fields = const {};

  static MangaInitialState _instantiate(DecodingData data) {
    return MangaInitialState();
  }

  @override
  final Function instantiate = _instantiate;

  static MangaInitialState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaInitialState>(map);
  }

  static MangaInitialState fromJson(String json) {
    return ensureInitialized().decodeJson<MangaInitialState>(json);
  }
}

mixin MangaInitialStateMappable {
  String toJson() {
    return MangaInitialStateMapper.ensureInitialized()
        .encodeJson<MangaInitialState>(this as MangaInitialState);
  }

  Map<String, dynamic> toMap() {
    return MangaInitialStateMapper.ensureInitialized()
        .encodeMap<MangaInitialState>(this as MangaInitialState);
  }

  MangaInitialStateCopyWith<MangaInitialState, MangaInitialState,
          MangaInitialState>
      get copyWith =>
          _MangaInitialStateCopyWithImpl<MangaInitialState, MangaInitialState>(
              this as MangaInitialState, $identity, $identity);
  @override
  String toString() {
    return MangaInitialStateMapper.ensureInitialized()
        .stringifyValue(this as MangaInitialState);
  }

  @override
  bool operator ==(Object other) {
    return MangaInitialStateMapper.ensureInitialized()
        .equalsValue(this as MangaInitialState, other);
  }

  @override
  int get hashCode {
    return MangaInitialStateMapper.ensureInitialized()
        .hashValue(this as MangaInitialState);
  }
}

extension MangaInitialStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaInitialState, $Out> {
  MangaInitialStateCopyWith<$R, MangaInitialState, $Out>
      get $asMangaInitialState => $base
          .as((v, t, t2) => _MangaInitialStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaInitialStateCopyWith<$R, $In extends MangaInitialState,
    $Out> implements MangaStateCopyWith<$R, $In, $Out> {
  @override
  $R call();
  MangaInitialStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaInitialStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaInitialState, $Out>
    implements MangaInitialStateCopyWith<$R, MangaInitialState, $Out> {
  _MangaInitialStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaInitialState> $mapper =
      MangaInitialStateMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  MangaInitialState $make(CopyWithData data) => MangaInitialState();

  @override
  MangaInitialStateCopyWith<$R2, MangaInitialState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaInitialStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class MangaLoadedStateMapper extends ClassMapperBase<MangaLoadedState> {
  MangaLoadedStateMapper._();

  static MangaLoadedStateMapper? _instance;
  static MangaLoadedStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaLoadedStateMapper._());
      MangaStateMapper.ensureInitialized();
      MangaMapper.ensureInitialized();
      ChapterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaLoadedState';

  static Manga _$manga(MangaLoadedState v) => v.manga;
  static const Field<MangaLoadedState, Manga> _f$manga =
      Field('manga', _$manga);
  static ChapterStatus _$status(MangaLoadedState v) => v.status;
  static const Field<MangaLoadedState, ChapterStatus> _f$status =
      Field('status', _$status);
  static List<List<Chapter>> _$chapters(MangaLoadedState v) => v.chapters;
  static const Field<MangaLoadedState, List<List<Chapter>>> _f$chapters =
      Field('chapters', _$chapters, opt: true, def: const []);
  static List<int> _$offsets(MangaLoadedState v) => v.offsets;
  static const Field<MangaLoadedState, List<int>> _f$offsets =
      Field('offsets', _$offsets, opt: true, def: const []);
  static int _$limit(MangaLoadedState v) => v.limit;
  static const Field<MangaLoadedState, int> _f$limit =
      Field('limit', _$limit, opt: true, def: 20);
  static int _$total(MangaLoadedState v) => v.total;
  static const Field<MangaLoadedState, int> _f$total =
      Field('total', _$total, opt: true, def: 0);
  static bool _$hasNextPage(MangaLoadedState v) => v.hasNextPage;
  static const Field<MangaLoadedState, bool> _f$hasNextPage =
      Field('hasNextPage', _$hasNextPage, opt: true, def: true);

  @override
  final MappableFields<MangaLoadedState> fields = const {
    #manga: _f$manga,
    #status: _f$status,
    #chapters: _f$chapters,
    #offsets: _f$offsets,
    #limit: _f$limit,
    #total: _f$total,
    #hasNextPage: _f$hasNextPage,
  };

  static MangaLoadedState _instantiate(DecodingData data) {
    return MangaLoadedState(
        manga: data.dec(_f$manga),
        status: data.dec(_f$status),
        chapters: data.dec(_f$chapters),
        offsets: data.dec(_f$offsets),
        limit: data.dec(_f$limit),
        total: data.dec(_f$total),
        hasNextPage: data.dec(_f$hasNextPage));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaLoadedState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaLoadedState>(map);
  }

  static MangaLoadedState fromJson(String json) {
    return ensureInitialized().decodeJson<MangaLoadedState>(json);
  }
}

mixin MangaLoadedStateMappable {
  String toJson() {
    return MangaLoadedStateMapper.ensureInitialized()
        .encodeJson<MangaLoadedState>(this as MangaLoadedState);
  }

  Map<String, dynamic> toMap() {
    return MangaLoadedStateMapper.ensureInitialized()
        .encodeMap<MangaLoadedState>(this as MangaLoadedState);
  }

  MangaLoadedStateCopyWith<MangaLoadedState, MangaLoadedState, MangaLoadedState>
      get copyWith =>
          _MangaLoadedStateCopyWithImpl<MangaLoadedState, MangaLoadedState>(
              this as MangaLoadedState, $identity, $identity);
  @override
  String toString() {
    return MangaLoadedStateMapper.ensureInitialized()
        .stringifyValue(this as MangaLoadedState);
  }

  @override
  bool operator ==(Object other) {
    return MangaLoadedStateMapper.ensureInitialized()
        .equalsValue(this as MangaLoadedState, other);
  }

  @override
  int get hashCode {
    return MangaLoadedStateMapper.ensureInitialized()
        .hashValue(this as MangaLoadedState);
  }
}

extension MangaLoadedStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaLoadedState, $Out> {
  MangaLoadedStateCopyWith<$R, MangaLoadedState, $Out>
      get $asMangaLoadedState => $base
          .as((v, t, t2) => _MangaLoadedStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaLoadedStateCopyWith<$R, $In extends MangaLoadedState, $Out>
    implements MangaStateCopyWith<$R, $In, $Out> {
  MangaCopyWith<$R, Manga, Manga> get manga;
  ListCopyWith<$R, List<Chapter>,
      ObjectCopyWith<$R, List<Chapter>, List<Chapter>>> get chapters;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets;
  @override
  $R call(
      {Manga? manga,
      ChapterStatus? status,
      List<List<Chapter>>? chapters,
      List<int>? offsets,
      int? limit,
      int? total,
      bool? hasNextPage});
  MangaLoadedStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaLoadedStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaLoadedState, $Out>
    implements MangaLoadedStateCopyWith<$R, MangaLoadedState, $Out> {
  _MangaLoadedStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaLoadedState> $mapper =
      MangaLoadedStateMapper.ensureInitialized();
  @override
  MangaCopyWith<$R, Manga, Manga> get manga =>
      $value.manga.copyWith.$chain((v) => call(manga: v));
  @override
  ListCopyWith<$R, List<Chapter>,
          ObjectCopyWith<$R, List<Chapter>, List<Chapter>>>
      get chapters => ListCopyWith($value.chapters,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(chapters: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets =>
      ListCopyWith($value.offsets, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(offsets: v));
  @override
  $R call(
          {Manga? manga,
          ChapterStatus? status,
          List<List<Chapter>>? chapters,
          List<int>? offsets,
          int? limit,
          int? total,
          bool? hasNextPage}) =>
      $apply(FieldCopyWithData({
        if (manga != null) #manga: manga,
        if (status != null) #status: status,
        if (chapters != null) #chapters: chapters,
        if (offsets != null) #offsets: offsets,
        if (limit != null) #limit: limit,
        if (total != null) #total: total,
        if (hasNextPage != null) #hasNextPage: hasNextPage
      }));
  @override
  MangaLoadedState $make(CopyWithData data) => MangaLoadedState(
      manga: data.get(#manga, or: $value.manga),
      status: data.get(#status, or: $value.status),
      chapters: data.get(#chapters, or: $value.chapters),
      offsets: data.get(#offsets, or: $value.offsets),
      limit: data.get(#limit, or: $value.limit),
      total: data.get(#total, or: $value.total),
      hasNextPage: data.get(#hasNextPage, or: $value.hasNextPage));

  @override
  MangaLoadedStateCopyWith<$R2, MangaLoadedState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaLoadedStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
