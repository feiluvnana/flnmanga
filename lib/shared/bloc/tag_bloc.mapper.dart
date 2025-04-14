// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tag_bloc.dart';

class TagFetchedMapper extends ClassMapperBase<TagFetched> {
  TagFetchedMapper._();

  static TagFetchedMapper? _instance;
  static TagFetchedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagFetchedMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagFetched';

  @override
  final MappableFields<TagFetched> fields = const {};

  static TagFetched _instantiate(DecodingData data) {
    return TagFetched();
  }

  @override
  final Function instantiate = _instantiate;

  static TagFetched fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagFetched>(map);
  }

  static TagFetched fromJson(String json) {
    return ensureInitialized().decodeJson<TagFetched>(json);
  }
}

mixin TagFetchedMappable {
  String toJson() {
    return TagFetchedMapper.ensureInitialized()
        .encodeJson<TagFetched>(this as TagFetched);
  }

  Map<String, dynamic> toMap() {
    return TagFetchedMapper.ensureInitialized()
        .encodeMap<TagFetched>(this as TagFetched);
  }

  TagFetchedCopyWith<TagFetched, TagFetched, TagFetched> get copyWith =>
      _TagFetchedCopyWithImpl<TagFetched, TagFetched>(
          this as TagFetched, $identity, $identity);
  @override
  String toString() {
    return TagFetchedMapper.ensureInitialized()
        .stringifyValue(this as TagFetched);
  }

  @override
  bool operator ==(Object other) {
    return TagFetchedMapper.ensureInitialized()
        .equalsValue(this as TagFetched, other);
  }

  @override
  int get hashCode {
    return TagFetchedMapper.ensureInitialized().hashValue(this as TagFetched);
  }
}

extension TagFetchedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TagFetched, $Out> {
  TagFetchedCopyWith<$R, TagFetched, $Out> get $asTagFetched =>
      $base.as((v, t, t2) => _TagFetchedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagFetchedCopyWith<$R, $In extends TagFetched, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  TagFetchedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagFetchedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagFetched, $Out>
    implements TagFetchedCopyWith<$R, TagFetched, $Out> {
  _TagFetchedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagFetched> $mapper =
      TagFetchedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  TagFetched $make(CopyWithData data) => TagFetched();

  @override
  TagFetchedCopyWith<$R2, TagFetched, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagFetchedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class TagStateMapper extends ClassMapperBase<TagState> {
  TagStateMapper._();

  static TagStateMapper? _instance;
  static TagStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagStateMapper._());
      mgd.TagMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TagState';

  static TagStatus _$status(TagState v) => v.status;
  static const Field<TagState, TagStatus> _f$status = Field('status', _$status);
  static List<mgd.Tag> _$tags(TagState v) => v.tags;
  static const Field<TagState, List<mgd.Tag>> _f$tags = Field('tags', _$tags);

  @override
  final MappableFields<TagState> fields = const {
    #status: _f$status,
    #tags: _f$tags,
  };

  static TagState _instantiate(DecodingData data) {
    return TagState(status: data.dec(_f$status), tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static TagState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagState>(map);
  }

  static TagState fromJson(String json) {
    return ensureInitialized().decodeJson<TagState>(json);
  }
}

mixin TagStateMappable {
  String toJson() {
    return TagStateMapper.ensureInitialized()
        .encodeJson<TagState>(this as TagState);
  }

  Map<String, dynamic> toMap() {
    return TagStateMapper.ensureInitialized()
        .encodeMap<TagState>(this as TagState);
  }

  TagStateCopyWith<TagState, TagState, TagState> get copyWith =>
      _TagStateCopyWithImpl<TagState, TagState>(
          this as TagState, $identity, $identity);
  @override
  String toString() {
    return TagStateMapper.ensureInitialized().stringifyValue(this as TagState);
  }

  @override
  bool operator ==(Object other) {
    return TagStateMapper.ensureInitialized()
        .equalsValue(this as TagState, other);
  }

  @override
  int get hashCode {
    return TagStateMapper.ensureInitialized().hashValue(this as TagState);
  }
}

extension TagStateValueCopy<$R, $Out> on ObjectCopyWith<$R, TagState, $Out> {
  TagStateCopyWith<$R, TagState, $Out> get $asTagState =>
      $base.as((v, t, t2) => _TagStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class TagStateCopyWith<$R, $In extends TagState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, mgd.Tag, mgd.TagCopyWith<$R, mgd.Tag, mgd.Tag>> get tags;
  $R call({TagStatus? status, List<mgd.Tag>? tags});
  TagStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagState, $Out>
    implements TagStateCopyWith<$R, TagState, $Out> {
  _TagStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagState> $mapper =
      TagStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, mgd.Tag, mgd.TagCopyWith<$R, mgd.Tag, mgd.Tag>> get tags =>
      ListCopyWith(
          $value.tags, (v, t) => v.copyWith.$chain(t), (v) => call(tags: v));
  @override
  $R call({TagStatus? status, List<mgd.Tag>? tags}) => $apply(FieldCopyWithData(
      {if (status != null) #status: status, if (tags != null) #tags: tags}));
  @override
  TagState $make(CopyWithData data) => TagState(
      status: data.get(#status, or: $value.status),
      tags: data.get(#tags, or: $value.tags));

  @override
  TagStateCopyWith<$R2, TagState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
