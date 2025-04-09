// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'library_bloc.dart';

class LibraryStatusMapper extends EnumMapper<LibraryStatus> {
  LibraryStatusMapper._();

  static LibraryStatusMapper? _instance;
  static LibraryStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LibraryStatusMapper._());
    }
    return _instance!;
  }

  static LibraryStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LibraryStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return LibraryStatus.initial;
      case r'loading':
        return LibraryStatus.loading;
      case r'loaded':
        return LibraryStatus.loaded;
      case r'error':
        return LibraryStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LibraryStatus self) {
    switch (self) {
      case LibraryStatus.initial:
        return r'initial';
      case LibraryStatus.loading:
        return r'loading';
      case LibraryStatus.loaded:
        return r'loaded';
      case LibraryStatus.error:
        return r'error';
    }
  }
}

extension LibraryStatusMapperExtension on LibraryStatus {
  String toValue() {
    LibraryStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LibraryStatus>(this) as String;
  }
}

class LibraryEventMapper extends ClassMapperBase<LibraryEvent> {
  LibraryEventMapper._();

  static LibraryEventMapper? _instance;
  static LibraryEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LibraryEventMapper._());
      LibraryStartedMapper.ensureInitialized();
      LibraryRefreshMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LibraryEvent';

  @override
  final MappableFields<LibraryEvent> fields = const {};

  static LibraryEvent _instantiate(DecodingData data) {
    return LibraryEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static LibraryEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LibraryEvent>(map);
  }

  static LibraryEvent fromJson(String json) {
    return ensureInitialized().decodeJson<LibraryEvent>(json);
  }
}

mixin LibraryEventMappable {
  String toJson() {
    return LibraryEventMapper.ensureInitialized()
        .encodeJson<LibraryEvent>(this as LibraryEvent);
  }

  Map<String, dynamic> toMap() {
    return LibraryEventMapper.ensureInitialized()
        .encodeMap<LibraryEvent>(this as LibraryEvent);
  }

  LibraryEventCopyWith<LibraryEvent, LibraryEvent, LibraryEvent> get copyWith =>
      _LibraryEventCopyWithImpl<LibraryEvent, LibraryEvent>(
          this as LibraryEvent, $identity, $identity);
  @override
  String toString() {
    return LibraryEventMapper.ensureInitialized()
        .stringifyValue(this as LibraryEvent);
  }

  @override
  bool operator ==(Object other) {
    return LibraryEventMapper.ensureInitialized()
        .equalsValue(this as LibraryEvent, other);
  }

  @override
  int get hashCode {
    return LibraryEventMapper.ensureInitialized()
        .hashValue(this as LibraryEvent);
  }
}

extension LibraryEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LibraryEvent, $Out> {
  LibraryEventCopyWith<$R, LibraryEvent, $Out> get $asLibraryEvent =>
      $base.as((v, t, t2) => _LibraryEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LibraryEventCopyWith<$R, $In extends LibraryEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  LibraryEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LibraryEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LibraryEvent, $Out>
    implements LibraryEventCopyWith<$R, LibraryEvent, $Out> {
  _LibraryEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LibraryEvent> $mapper =
      LibraryEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LibraryEvent $make(CopyWithData data) => LibraryEvent();

  @override
  LibraryEventCopyWith<$R2, LibraryEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LibraryEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LibraryStartedMapper extends ClassMapperBase<LibraryStarted> {
  LibraryStartedMapper._();

  static LibraryStartedMapper? _instance;
  static LibraryStartedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LibraryStartedMapper._());
      LibraryEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LibraryStarted';

  @override
  final MappableFields<LibraryStarted> fields = const {};

  static LibraryStarted _instantiate(DecodingData data) {
    return LibraryStarted();
  }

  @override
  final Function instantiate = _instantiate;

  static LibraryStarted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LibraryStarted>(map);
  }

  static LibraryStarted fromJson(String json) {
    return ensureInitialized().decodeJson<LibraryStarted>(json);
  }
}

mixin LibraryStartedMappable {
  String toJson() {
    return LibraryStartedMapper.ensureInitialized()
        .encodeJson<LibraryStarted>(this as LibraryStarted);
  }

  Map<String, dynamic> toMap() {
    return LibraryStartedMapper.ensureInitialized()
        .encodeMap<LibraryStarted>(this as LibraryStarted);
  }

  LibraryStartedCopyWith<LibraryStarted, LibraryStarted, LibraryStarted>
      get copyWith =>
          _LibraryStartedCopyWithImpl<LibraryStarted, LibraryStarted>(
              this as LibraryStarted, $identity, $identity);
  @override
  String toString() {
    return LibraryStartedMapper.ensureInitialized()
        .stringifyValue(this as LibraryStarted);
  }

  @override
  bool operator ==(Object other) {
    return LibraryStartedMapper.ensureInitialized()
        .equalsValue(this as LibraryStarted, other);
  }

  @override
  int get hashCode {
    return LibraryStartedMapper.ensureInitialized()
        .hashValue(this as LibraryStarted);
  }
}

extension LibraryStartedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LibraryStarted, $Out> {
  LibraryStartedCopyWith<$R, LibraryStarted, $Out> get $asLibraryStarted =>
      $base.as((v, t, t2) => _LibraryStartedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LibraryStartedCopyWith<$R, $In extends LibraryStarted, $Out>
    implements LibraryEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LibraryStartedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LibraryStartedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LibraryStarted, $Out>
    implements LibraryStartedCopyWith<$R, LibraryStarted, $Out> {
  _LibraryStartedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LibraryStarted> $mapper =
      LibraryStartedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LibraryStarted $make(CopyWithData data) => LibraryStarted();

  @override
  LibraryStartedCopyWith<$R2, LibraryStarted, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LibraryStartedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LibraryRefreshMapper extends ClassMapperBase<LibraryRefresh> {
  LibraryRefreshMapper._();

  static LibraryRefreshMapper? _instance;
  static LibraryRefreshMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LibraryRefreshMapper._());
      LibraryEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LibraryRefresh';

  @override
  final MappableFields<LibraryRefresh> fields = const {};

  static LibraryRefresh _instantiate(DecodingData data) {
    return LibraryRefresh();
  }

  @override
  final Function instantiate = _instantiate;

  static LibraryRefresh fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LibraryRefresh>(map);
  }

  static LibraryRefresh fromJson(String json) {
    return ensureInitialized().decodeJson<LibraryRefresh>(json);
  }
}

mixin LibraryRefreshMappable {
  String toJson() {
    return LibraryRefreshMapper.ensureInitialized()
        .encodeJson<LibraryRefresh>(this as LibraryRefresh);
  }

  Map<String, dynamic> toMap() {
    return LibraryRefreshMapper.ensureInitialized()
        .encodeMap<LibraryRefresh>(this as LibraryRefresh);
  }

  LibraryRefreshCopyWith<LibraryRefresh, LibraryRefresh, LibraryRefresh>
      get copyWith =>
          _LibraryRefreshCopyWithImpl<LibraryRefresh, LibraryRefresh>(
              this as LibraryRefresh, $identity, $identity);
  @override
  String toString() {
    return LibraryRefreshMapper.ensureInitialized()
        .stringifyValue(this as LibraryRefresh);
  }

  @override
  bool operator ==(Object other) {
    return LibraryRefreshMapper.ensureInitialized()
        .equalsValue(this as LibraryRefresh, other);
  }

  @override
  int get hashCode {
    return LibraryRefreshMapper.ensureInitialized()
        .hashValue(this as LibraryRefresh);
  }
}

extension LibraryRefreshValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LibraryRefresh, $Out> {
  LibraryRefreshCopyWith<$R, LibraryRefresh, $Out> get $asLibraryRefresh =>
      $base.as((v, t, t2) => _LibraryRefreshCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LibraryRefreshCopyWith<$R, $In extends LibraryRefresh, $Out>
    implements LibraryEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  LibraryRefreshCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _LibraryRefreshCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LibraryRefresh, $Out>
    implements LibraryRefreshCopyWith<$R, LibraryRefresh, $Out> {
  _LibraryRefreshCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LibraryRefresh> $mapper =
      LibraryRefreshMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  LibraryRefresh $make(CopyWithData data) => LibraryRefresh();

  @override
  LibraryRefreshCopyWith<$R2, LibraryRefresh, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LibraryRefreshCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class LibraryStateMapper extends ClassMapperBase<LibraryState> {
  LibraryStateMapper._();

  static LibraryStateMapper? _instance;
  static LibraryStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LibraryStateMapper._());
      LibraryStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LibraryState';

  static LibraryStatus _$status(LibraryState v) => v.status;
  static const Field<LibraryState, LibraryStatus> _f$status =
      Field('status', _$status);
  static String? _$errorMessage(LibraryState v) => v.errorMessage;
  static const Field<LibraryState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);

  @override
  final MappableFields<LibraryState> fields = const {
    #status: _f$status,
    #errorMessage: _f$errorMessage,
  };

  static LibraryState _instantiate(DecodingData data) {
    return LibraryState(
        status: data.dec(_f$status), errorMessage: data.dec(_f$errorMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static LibraryState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LibraryState>(map);
  }

  static LibraryState fromJson(String json) {
    return ensureInitialized().decodeJson<LibraryState>(json);
  }
}

mixin LibraryStateMappable {
  String toJson() {
    return LibraryStateMapper.ensureInitialized()
        .encodeJson<LibraryState>(this as LibraryState);
  }

  Map<String, dynamic> toMap() {
    return LibraryStateMapper.ensureInitialized()
        .encodeMap<LibraryState>(this as LibraryState);
  }

  LibraryStateCopyWith<LibraryState, LibraryState, LibraryState> get copyWith =>
      _LibraryStateCopyWithImpl<LibraryState, LibraryState>(
          this as LibraryState, $identity, $identity);
  @override
  String toString() {
    return LibraryStateMapper.ensureInitialized()
        .stringifyValue(this as LibraryState);
  }

  @override
  bool operator ==(Object other) {
    return LibraryStateMapper.ensureInitialized()
        .equalsValue(this as LibraryState, other);
  }

  @override
  int get hashCode {
    return LibraryStateMapper.ensureInitialized()
        .hashValue(this as LibraryState);
  }
}

extension LibraryStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LibraryState, $Out> {
  LibraryStateCopyWith<$R, LibraryState, $Out> get $asLibraryState =>
      $base.as((v, t, t2) => _LibraryStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class LibraryStateCopyWith<$R, $In extends LibraryState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({LibraryStatus? status, String? errorMessage});
  LibraryStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LibraryStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LibraryState, $Out>
    implements LibraryStateCopyWith<$R, LibraryState, $Out> {
  _LibraryStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LibraryState> $mapper =
      LibraryStateMapper.ensureInitialized();
  @override
  $R call({LibraryStatus? status, Object? errorMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage
      }));
  @override
  LibraryState $make(CopyWithData data) => LibraryState(
      status: data.get(#status, or: $value.status),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage));

  @override
  LibraryStateCopyWith<$R2, LibraryState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LibraryStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
