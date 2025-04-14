// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'chapter_bloc.dart';

class ChapterChapterFetchedMapper
    extends ClassMapperBase<ChapterChapterFetched> {
  ChapterChapterFetchedMapper._();

  static ChapterChapterFetchedMapper? _instance;
  static ChapterChapterFetchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChapterChapterFetchedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChapterChapterFetched';

  static mgd.Uuid _$chapterId(ChapterChapterFetched v) => v.chapterId;
  static const Field<ChapterChapterFetched, mgd.Uuid> _f$chapterId =
      Field('chapterId', _$chapterId);

  @override
  final MappableFields<ChapterChapterFetched> fields = const {
    #chapterId: _f$chapterId,
  };

  static ChapterChapterFetched _instantiate(DecodingData data) {
    return ChapterChapterFetched(chapterId: data.dec(_f$chapterId));
  }

  @override
  final Function instantiate = _instantiate;

  static ChapterChapterFetched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChapterChapterFetched>(map);
  }

  static ChapterChapterFetched fromJson(String json) {
    return ensureInitialized().decodeJson<ChapterChapterFetched>(json);
  }
}

mixin ChapterChapterFetchedMappable {
  String toJson() {
    return ChapterChapterFetchedMapper.ensureInitialized()
        .encodeJson<ChapterChapterFetched>(this as ChapterChapterFetched);
  }

  Map<String, dynamic> toMap() {
    return ChapterChapterFetchedMapper.ensureInitialized()
        .encodeMap<ChapterChapterFetched>(this as ChapterChapterFetched);
  }

  ChapterChapterFetchedCopyWith<ChapterChapterFetched, ChapterChapterFetched,
      ChapterChapterFetched> get copyWith => _ChapterChapterFetchedCopyWithImpl<
          ChapterChapterFetched, ChapterChapterFetched>(
      this as ChapterChapterFetched, $identity, $identity);
  @override
  String toString() {
    return ChapterChapterFetchedMapper.ensureInitialized()
        .stringifyValue(this as ChapterChapterFetched);
  }

  @override
  bool operator ==(Object other) {
    return ChapterChapterFetchedMapper.ensureInitialized()
        .equalsValue(this as ChapterChapterFetched, other);
  }

  @override
  int get hashCode {
    return ChapterChapterFetchedMapper.ensureInitialized()
        .hashValue(this as ChapterChapterFetched);
  }
}

extension ChapterChapterFetchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChapterChapterFetched, $Out> {
  ChapterChapterFetchedCopyWith<$R, ChapterChapterFetched, $Out>
      get $asChapterChapterFetched => $base.as(
          (v, t, t2) => _ChapterChapterFetchedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChapterChapterFetchedCopyWith<
    $R,
    $In extends ChapterChapterFetched,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({mgd.Uuid? chapterId});
  ChapterChapterFetchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChapterChapterFetchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChapterChapterFetched, $Out>
    implements ChapterChapterFetchedCopyWith<$R, ChapterChapterFetched, $Out> {
  _ChapterChapterFetchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChapterChapterFetched> $mapper =
      ChapterChapterFetchedMapper.ensureInitialized();
  @override
  $R call({mgd.Uuid? chapterId}) =>
      $apply(FieldCopyWithData({if (chapterId != null) #chapterId: chapterId}));
  @override
  ChapterChapterFetched $make(CopyWithData data) => ChapterChapterFetched(
      chapterId: data.get(#chapterId, or: $value.chapterId));

  @override
  ChapterChapterFetchedCopyWith<$R2, ChapterChapterFetched, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChapterChapterFetchedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChapterInitialStateMapper extends ClassMapperBase<ChapterInitialState> {
  ChapterInitialStateMapper._();

  static ChapterInitialStateMapper? _instance;
  static ChapterInitialStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChapterInitialStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChapterInitialState';

  @override
  final MappableFields<ChapterInitialState> fields = const {};

  static ChapterInitialState _instantiate(DecodingData data) {
    return ChapterInitialState();
  }

  @override
  final Function instantiate = _instantiate;

  static ChapterInitialState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChapterInitialState>(map);
  }

  static ChapterInitialState fromJson(String json) {
    return ensureInitialized().decodeJson<ChapterInitialState>(json);
  }
}

mixin ChapterInitialStateMappable {
  String toJson() {
    return ChapterInitialStateMapper.ensureInitialized()
        .encodeJson<ChapterInitialState>(this as ChapterInitialState);
  }

  Map<String, dynamic> toMap() {
    return ChapterInitialStateMapper.ensureInitialized()
        .encodeMap<ChapterInitialState>(this as ChapterInitialState);
  }

  ChapterInitialStateCopyWith<ChapterInitialState, ChapterInitialState,
      ChapterInitialState> get copyWith => _ChapterInitialStateCopyWithImpl<
          ChapterInitialState, ChapterInitialState>(
      this as ChapterInitialState, $identity, $identity);
  @override
  String toString() {
    return ChapterInitialStateMapper.ensureInitialized()
        .stringifyValue(this as ChapterInitialState);
  }

  @override
  bool operator ==(Object other) {
    return ChapterInitialStateMapper.ensureInitialized()
        .equalsValue(this as ChapterInitialState, other);
  }

  @override
  int get hashCode {
    return ChapterInitialStateMapper.ensureInitialized()
        .hashValue(this as ChapterInitialState);
  }
}

extension ChapterInitialStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChapterInitialState, $Out> {
  ChapterInitialStateCopyWith<$R, ChapterInitialState, $Out>
      get $asChapterInitialState => $base.as(
          (v, t, t2) => _ChapterInitialStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChapterInitialStateCopyWith<$R, $In extends ChapterInitialState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ChapterInitialStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChapterInitialStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChapterInitialState, $Out>
    implements ChapterInitialStateCopyWith<$R, ChapterInitialState, $Out> {
  _ChapterInitialStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChapterInitialState> $mapper =
      ChapterInitialStateMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  ChapterInitialState $make(CopyWithData data) => ChapterInitialState();

  @override
  ChapterInitialStateCopyWith<$R2, ChapterInitialState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChapterInitialStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChapterChapterFetchedStateMapper
    extends ClassMapperBase<ChapterChapterFetchedState> {
  ChapterChapterFetchedStateMapper._();

  static ChapterChapterFetchedStateMapper? _instance;
  static ChapterChapterFetchedStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = ChapterChapterFetchedStateMapper._());
      mgd.ChapterMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChapterChapterFetchedState';

  static ImageStatus _$status(ChapterChapterFetchedState v) => v.status;
  static const Field<ChapterChapterFetchedState, ImageStatus> _f$status =
      Field('status', _$status);
  static mgd.Chapter _$chapter(ChapterChapterFetchedState v) => v.chapter;
  static const Field<ChapterChapterFetchedState, mgd.Chapter> _f$chapter =
      Field('chapter', _$chapter);
  static List<String> _$urls(ChapterChapterFetchedState v) => v.urls;
  static const Field<ChapterChapterFetchedState, List<String>> _f$urls =
      Field('urls', _$urls);

  @override
  final MappableFields<ChapterChapterFetchedState> fields = const {
    #status: _f$status,
    #chapter: _f$chapter,
    #urls: _f$urls,
  };

  static ChapterChapterFetchedState _instantiate(DecodingData data) {
    return ChapterChapterFetchedState(
        status: data.dec(_f$status),
        chapter: data.dec(_f$chapter),
        urls: data.dec(_f$urls));
  }

  @override
  final Function instantiate = _instantiate;

  static ChapterChapterFetchedState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChapterChapterFetchedState>(map);
  }

  static ChapterChapterFetchedState fromJson(String json) {
    return ensureInitialized().decodeJson<ChapterChapterFetchedState>(json);
  }
}

mixin ChapterChapterFetchedStateMappable {
  String toJson() {
    return ChapterChapterFetchedStateMapper.ensureInitialized()
        .encodeJson<ChapterChapterFetchedState>(
            this as ChapterChapterFetchedState);
  }

  Map<String, dynamic> toMap() {
    return ChapterChapterFetchedStateMapper.ensureInitialized()
        .encodeMap<ChapterChapterFetchedState>(
            this as ChapterChapterFetchedState);
  }

  ChapterChapterFetchedStateCopyWith<ChapterChapterFetchedState,
          ChapterChapterFetchedState, ChapterChapterFetchedState>
      get copyWith => _ChapterChapterFetchedStateCopyWithImpl<
              ChapterChapterFetchedState, ChapterChapterFetchedState>(
          this as ChapterChapterFetchedState, $identity, $identity);
  @override
  String toString() {
    return ChapterChapterFetchedStateMapper.ensureInitialized()
        .stringifyValue(this as ChapterChapterFetchedState);
  }

  @override
  bool operator ==(Object other) {
    return ChapterChapterFetchedStateMapper.ensureInitialized()
        .equalsValue(this as ChapterChapterFetchedState, other);
  }

  @override
  int get hashCode {
    return ChapterChapterFetchedStateMapper.ensureInitialized()
        .hashValue(this as ChapterChapterFetchedState);
  }
}

extension ChapterChapterFetchedStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChapterChapterFetchedState, $Out> {
  ChapterChapterFetchedStateCopyWith<$R, ChapterChapterFetchedState, $Out>
      get $asChapterChapterFetchedState => $base.as((v, t, t2) =>
          _ChapterChapterFetchedStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChapterChapterFetchedStateCopyWith<
    $R,
    $In extends ChapterChapterFetchedState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  mgd.ChapterCopyWith<$R, mgd.Chapter, mgd.Chapter> get chapter;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls;
  $R call({ImageStatus? status, mgd.Chapter? chapter, List<String>? urls});
  ChapterChapterFetchedStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ChapterChapterFetchedStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChapterChapterFetchedState, $Out>
    implements
        ChapterChapterFetchedStateCopyWith<$R, ChapterChapterFetchedState,
            $Out> {
  _ChapterChapterFetchedStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChapterChapterFetchedState> $mapper =
      ChapterChapterFetchedStateMapper.ensureInitialized();
  @override
  mgd.ChapterCopyWith<$R, mgd.Chapter, mgd.Chapter> get chapter =>
      $value.chapter.copyWith.$chain((v) => call(chapter: v));
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get urls =>
      ListCopyWith($value.urls, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(urls: v));
  @override
  $R call({ImageStatus? status, mgd.Chapter? chapter, List<String>? urls}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (chapter != null) #chapter: chapter,
        if (urls != null) #urls: urls
      }));
  @override
  ChapterChapterFetchedState $make(CopyWithData data) =>
      ChapterChapterFetchedState(
          status: data.get(#status, or: $value.status),
          chapter: data.get(#chapter, or: $value.chapter),
          urls: data.get(#urls, or: $value.urls));

  @override
  ChapterChapterFetchedStateCopyWith<$R2, ChapterChapterFetchedState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ChapterChapterFetchedStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
