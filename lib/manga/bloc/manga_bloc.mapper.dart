// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'manga_bloc.dart';

class MangaFetchedMapper extends ClassMapperBase<MangaFetched> {
  MangaFetchedMapper._();

  static MangaFetchedMapper? _instance;
  static MangaFetchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaFetchedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MangaFetched';

  static mgd.Uuid _$mangaId(MangaFetched v) => v.mangaId;
  static const Field<MangaFetched, mgd.Uuid> _f$mangaId =
      Field('mangaId', _$mangaId);

  @override
  final MappableFields<MangaFetched> fields = const {
    #mangaId: _f$mangaId,
  };

  static MangaFetched _instantiate(DecodingData data) {
    return MangaFetched(mangaId: data.dec(_f$mangaId));
  }

  @override
  final Function instantiate = _instantiate;

  static MangaFetched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaFetched>(map);
  }

  static MangaFetched fromJson(String json) {
    return ensureInitialized().decodeJson<MangaFetched>(json);
  }
}

mixin MangaFetchedMappable {
  String toJson() {
    return MangaFetchedMapper.ensureInitialized()
        .encodeJson<MangaFetched>(this as MangaFetched);
  }

  Map<String, dynamic> toMap() {
    return MangaFetchedMapper.ensureInitialized()
        .encodeMap<MangaFetched>(this as MangaFetched);
  }

  MangaFetchedCopyWith<MangaFetched, MangaFetched, MangaFetched> get copyWith =>
      _MangaFetchedCopyWithImpl<MangaFetched, MangaFetched>(
          this as MangaFetched, $identity, $identity);
  @override
  String toString() {
    return MangaFetchedMapper.ensureInitialized()
        .stringifyValue(this as MangaFetched);
  }

  @override
  bool operator ==(Object other) {
    return MangaFetchedMapper.ensureInitialized()
        .equalsValue(this as MangaFetched, other);
  }

  @override
  int get hashCode {
    return MangaFetchedMapper.ensureInitialized()
        .hashValue(this as MangaFetched);
  }
}

extension MangaFetchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaFetched, $Out> {
  MangaFetchedCopyWith<$R, MangaFetched, $Out> get $asMangaFetched =>
      $base.as((v, t, t2) => _MangaFetchedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaFetchedCopyWith<$R, $In extends MangaFetched, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({mgd.Uuid? mangaId});
  MangaFetchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MangaFetchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaFetched, $Out>
    implements MangaFetchedCopyWith<$R, MangaFetched, $Out> {
  _MangaFetchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaFetched> $mapper =
      MangaFetchedMapper.ensureInitialized();
  @override
  $R call({mgd.Uuid? mangaId}) =>
      $apply(FieldCopyWithData({if (mangaId != null) #mangaId: mangaId}));
  @override
  MangaFetched $make(CopyWithData data) =>
      MangaFetched(mangaId: data.get(#mangaId, or: $value.mangaId));

  @override
  MangaFetchedCopyWith<$R2, MangaFetched, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaFetchedCopyWithImpl<$R2, $Out2>($value, $cast, t);
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
      MangaFetchedStateMapper.ensureInitialized();
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

class MangaFetchedStateMapper extends ClassMapperBase<MangaFetchedState> {
  MangaFetchedStateMapper._();

  static MangaFetchedStateMapper? _instance;
  static MangaFetchedStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MangaFetchedStateMapper._());
      MangaStateMapper.ensureInitialized();
      mgd.MangaMapper.ensureInitialized();
      mgd.ChapterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MangaFetchedState';

  static mgd.Manga _$manga(MangaFetchedState v) => v.manga;
  static const Field<MangaFetchedState, mgd.Manga> _f$manga =
      Field('manga', _$manga);
  static ChapterStatus _$status(MangaFetchedState v) => v.status;
  static const Field<MangaFetchedState, ChapterStatus> _f$status =
      Field('status', _$status);
  static List<List<mgd.Chapter>> _$chapters(MangaFetchedState v) => v.chapters;
  static const Field<MangaFetchedState, List<List<mgd.Chapter>>> _f$chapters =
      Field('chapters', _$chapters);
  static List<int> _$offsets(MangaFetchedState v) => v.offsets;
  static const Field<MangaFetchedState, List<int>> _f$offsets =
      Field('offsets', _$offsets);
  static int _$limit(MangaFetchedState v) => v.limit;
  static const Field<MangaFetchedState, int> _f$limit = Field('limit', _$limit);
  static int _$total(MangaFetchedState v) => v.total;
  static const Field<MangaFetchedState, int> _f$total = Field('total', _$total);
  static bool _$hasNextPage(MangaFetchedState v) => v.hasNextPage;
  static const Field<MangaFetchedState, bool> _f$hasNextPage =
      Field('hasNextPage', _$hasNextPage);

  @override
  final MappableFields<MangaFetchedState> fields = const {
    #manga: _f$manga,
    #status: _f$status,
    #chapters: _f$chapters,
    #offsets: _f$offsets,
    #limit: _f$limit,
    #total: _f$total,
    #hasNextPage: _f$hasNextPage,
  };

  static MangaFetchedState _instantiate(DecodingData data) {
    return MangaFetchedState(
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

  static MangaFetchedState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MangaFetchedState>(map);
  }

  static MangaFetchedState fromJson(String json) {
    return ensureInitialized().decodeJson<MangaFetchedState>(json);
  }
}

mixin MangaFetchedStateMappable {
  String toJson() {
    return MangaFetchedStateMapper.ensureInitialized()
        .encodeJson<MangaFetchedState>(this as MangaFetchedState);
  }

  Map<String, dynamic> toMap() {
    return MangaFetchedStateMapper.ensureInitialized()
        .encodeMap<MangaFetchedState>(this as MangaFetchedState);
  }

  MangaFetchedStateCopyWith<MangaFetchedState, MangaFetchedState,
          MangaFetchedState>
      get copyWith =>
          _MangaFetchedStateCopyWithImpl<MangaFetchedState, MangaFetchedState>(
              this as MangaFetchedState, $identity, $identity);
  @override
  String toString() {
    return MangaFetchedStateMapper.ensureInitialized()
        .stringifyValue(this as MangaFetchedState);
  }

  @override
  bool operator ==(Object other) {
    return MangaFetchedStateMapper.ensureInitialized()
        .equalsValue(this as MangaFetchedState, other);
  }

  @override
  int get hashCode {
    return MangaFetchedStateMapper.ensureInitialized()
        .hashValue(this as MangaFetchedState);
  }
}

extension MangaFetchedStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MangaFetchedState, $Out> {
  MangaFetchedStateCopyWith<$R, MangaFetchedState, $Out>
      get $asMangaFetchedState => $base
          .as((v, t, t2) => _MangaFetchedStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MangaFetchedStateCopyWith<$R, $In extends MangaFetchedState,
    $Out> implements MangaStateCopyWith<$R, $In, $Out> {
  mgd.MangaCopyWith<$R, mgd.Manga, mgd.Manga> get manga;
  ListCopyWith<$R, List<mgd.Chapter>,
      ObjectCopyWith<$R, List<mgd.Chapter>, List<mgd.Chapter>>> get chapters;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets;
  @override
  $R call(
      {mgd.Manga? manga,
      ChapterStatus? status,
      List<List<mgd.Chapter>>? chapters,
      List<int>? offsets,
      int? limit,
      int? total,
      bool? hasNextPage});
  MangaFetchedStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _MangaFetchedStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MangaFetchedState, $Out>
    implements MangaFetchedStateCopyWith<$R, MangaFetchedState, $Out> {
  _MangaFetchedStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MangaFetchedState> $mapper =
      MangaFetchedStateMapper.ensureInitialized();
  @override
  mgd.MangaCopyWith<$R, mgd.Manga, mgd.Manga> get manga =>
      $value.manga.copyWith.$chain((v) => call(manga: v));
  @override
  ListCopyWith<$R, List<mgd.Chapter>,
          ObjectCopyWith<$R, List<mgd.Chapter>, List<mgd.Chapter>>>
      get chapters => ListCopyWith($value.chapters,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(chapters: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get offsets =>
      ListCopyWith($value.offsets, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(offsets: v));
  @override
  $R call(
          {mgd.Manga? manga,
          ChapterStatus? status,
          List<List<mgd.Chapter>>? chapters,
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
  MangaFetchedState $make(CopyWithData data) => MangaFetchedState(
      manga: data.get(#manga, or: $value.manga),
      status: data.get(#status, or: $value.status),
      chapters: data.get(#chapters, or: $value.chapters),
      offsets: data.get(#offsets, or: $value.offsets),
      limit: data.get(#limit, or: $value.limit),
      total: data.get(#total, or: $value.total),
      hasNextPage: data.get(#hasNextPage, or: $value.hasNextPage));

  @override
  MangaFetchedStateCopyWith<$R2, MangaFetchedState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _MangaFetchedStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
