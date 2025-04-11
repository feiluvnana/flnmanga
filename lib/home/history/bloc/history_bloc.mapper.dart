// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'history_bloc.dart';

class HistoryStatusMapper extends EnumMapper<HistoryStatus> {
  HistoryStatusMapper._();

  static HistoryStatusMapper? _instance;
  static HistoryStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HistoryStatusMapper._());
    }
    return _instance!;
  }

  static HistoryStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HistoryStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return HistoryStatus.initial;
      case r'loading':
        return HistoryStatus.loading;
      case r'loaded':
        return HistoryStatus.loaded;
      case r'error':
        return HistoryStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HistoryStatus self) {
    switch (self) {
      case HistoryStatus.initial:
        return r'initial';
      case HistoryStatus.loading:
        return r'loading';
      case HistoryStatus.loaded:
        return r'loaded';
      case HistoryStatus.error:
        return r'error';
    }
  }
}

extension HistoryStatusMapperExtension on HistoryStatus {
  String toValue() {
    HistoryStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HistoryStatus>(this) as String;
  }
}

class HistoryEventMapper extends ClassMapperBase<HistoryEvent> {
  HistoryEventMapper._();

  static HistoryEventMapper? _instance;
  static HistoryEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HistoryEventMapper._());
      HistoryStartedMapper.ensureInitialized();
      HistoryRefreshMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HistoryEvent';

  @override
  final MappableFields<HistoryEvent> fields = const {};

  static HistoryEvent _instantiate(DecodingData data) {
    return HistoryEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static HistoryEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HistoryEvent>(map);
  }

  static HistoryEvent fromJson(String json) {
    return ensureInitialized().decodeJson<HistoryEvent>(json);
  }
}

mixin HistoryEventMappable {
  String toJson() {
    return HistoryEventMapper.ensureInitialized()
        .encodeJson<HistoryEvent>(this as HistoryEvent);
  }

  Map<String, dynamic> toMap() {
    return HistoryEventMapper.ensureInitialized()
        .encodeMap<HistoryEvent>(this as HistoryEvent);
  }

  HistoryEventCopyWith<HistoryEvent, HistoryEvent, HistoryEvent> get copyWith =>
      _HistoryEventCopyWithImpl<HistoryEvent, HistoryEvent>(
          this as HistoryEvent, $identity, $identity);
  @override
  String toString() {
    return HistoryEventMapper.ensureInitialized()
        .stringifyValue(this as HistoryEvent);
  }

  @override
  bool operator ==(Object other) {
    return HistoryEventMapper.ensureInitialized()
        .equalsValue(this as HistoryEvent, other);
  }

  @override
  int get hashCode {
    return HistoryEventMapper.ensureInitialized()
        .hashValue(this as HistoryEvent);
  }
}

extension HistoryEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HistoryEvent, $Out> {
  HistoryEventCopyWith<$R, HistoryEvent, $Out> get $asHistoryEvent =>
      $base.as((v, t, t2) => _HistoryEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HistoryEventCopyWith<$R, $In extends HistoryEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  HistoryEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HistoryEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HistoryEvent, $Out>
    implements HistoryEventCopyWith<$R, HistoryEvent, $Out> {
  _HistoryEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HistoryEvent> $mapper =
      HistoryEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  HistoryEvent $make(CopyWithData data) => HistoryEvent();

  @override
  HistoryEventCopyWith<$R2, HistoryEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HistoryEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HistoryStartedMapper extends ClassMapperBase<HistoryStarted> {
  HistoryStartedMapper._();

  static HistoryStartedMapper? _instance;
  static HistoryStartedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HistoryStartedMapper._());
      HistoryEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HistoryStarted';

  @override
  final MappableFields<HistoryStarted> fields = const {};

  static HistoryStarted _instantiate(DecodingData data) {
    return HistoryStarted();
  }

  @override
  final Function instantiate = _instantiate;

  static HistoryStarted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HistoryStarted>(map);
  }

  static HistoryStarted fromJson(String json) {
    return ensureInitialized().decodeJson<HistoryStarted>(json);
  }
}

mixin HistoryStartedMappable {
  String toJson() {
    return HistoryStartedMapper.ensureInitialized()
        .encodeJson<HistoryStarted>(this as HistoryStarted);
  }

  Map<String, dynamic> toMap() {
    return HistoryStartedMapper.ensureInitialized()
        .encodeMap<HistoryStarted>(this as HistoryStarted);
  }

  HistoryStartedCopyWith<HistoryStarted, HistoryStarted, HistoryStarted>
      get copyWith =>
          _HistoryStartedCopyWithImpl<HistoryStarted, HistoryStarted>(
              this as HistoryStarted, $identity, $identity);
  @override
  String toString() {
    return HistoryStartedMapper.ensureInitialized()
        .stringifyValue(this as HistoryStarted);
  }

  @override
  bool operator ==(Object other) {
    return HistoryStartedMapper.ensureInitialized()
        .equalsValue(this as HistoryStarted, other);
  }

  @override
  int get hashCode {
    return HistoryStartedMapper.ensureInitialized()
        .hashValue(this as HistoryStarted);
  }
}

extension HistoryStartedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HistoryStarted, $Out> {
  HistoryStartedCopyWith<$R, HistoryStarted, $Out> get $asHistoryStarted =>
      $base.as((v, t, t2) => _HistoryStartedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HistoryStartedCopyWith<$R, $In extends HistoryStarted, $Out>
    implements HistoryEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  HistoryStartedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HistoryStartedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HistoryStarted, $Out>
    implements HistoryStartedCopyWith<$R, HistoryStarted, $Out> {
  _HistoryStartedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HistoryStarted> $mapper =
      HistoryStartedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  HistoryStarted $make(CopyWithData data) => HistoryStarted();

  @override
  HistoryStartedCopyWith<$R2, HistoryStarted, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HistoryStartedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HistoryRefreshMapper extends ClassMapperBase<HistoryRefresh> {
  HistoryRefreshMapper._();

  static HistoryRefreshMapper? _instance;
  static HistoryRefreshMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HistoryRefreshMapper._());
      HistoryEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HistoryRefresh';

  @override
  final MappableFields<HistoryRefresh> fields = const {};

  static HistoryRefresh _instantiate(DecodingData data) {
    return HistoryRefresh();
  }

  @override
  final Function instantiate = _instantiate;

  static HistoryRefresh fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HistoryRefresh>(map);
  }

  static HistoryRefresh fromJson(String json) {
    return ensureInitialized().decodeJson<HistoryRefresh>(json);
  }
}

mixin HistoryRefreshMappable {
  String toJson() {
    return HistoryRefreshMapper.ensureInitialized()
        .encodeJson<HistoryRefresh>(this as HistoryRefresh);
  }

  Map<String, dynamic> toMap() {
    return HistoryRefreshMapper.ensureInitialized()
        .encodeMap<HistoryRefresh>(this as HistoryRefresh);
  }

  HistoryRefreshCopyWith<HistoryRefresh, HistoryRefresh, HistoryRefresh>
      get copyWith =>
          _HistoryRefreshCopyWithImpl<HistoryRefresh, HistoryRefresh>(
              this as HistoryRefresh, $identity, $identity);
  @override
  String toString() {
    return HistoryRefreshMapper.ensureInitialized()
        .stringifyValue(this as HistoryRefresh);
  }

  @override
  bool operator ==(Object other) {
    return HistoryRefreshMapper.ensureInitialized()
        .equalsValue(this as HistoryRefresh, other);
  }

  @override
  int get hashCode {
    return HistoryRefreshMapper.ensureInitialized()
        .hashValue(this as HistoryRefresh);
  }
}

extension HistoryRefreshValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HistoryRefresh, $Out> {
  HistoryRefreshCopyWith<$R, HistoryRefresh, $Out> get $asHistoryRefresh =>
      $base.as((v, t, t2) => _HistoryRefreshCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HistoryRefreshCopyWith<$R, $In extends HistoryRefresh, $Out>
    implements HistoryEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  HistoryRefreshCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HistoryRefreshCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HistoryRefresh, $Out>
    implements HistoryRefreshCopyWith<$R, HistoryRefresh, $Out> {
  _HistoryRefreshCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HistoryRefresh> $mapper =
      HistoryRefreshMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  HistoryRefresh $make(CopyWithData data) => HistoryRefresh();

  @override
  HistoryRefreshCopyWith<$R2, HistoryRefresh, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HistoryRefreshCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HistoryStateMapper extends ClassMapperBase<HistoryState> {
  HistoryStateMapper._();

  static HistoryStateMapper? _instance;
  static HistoryStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HistoryStateMapper._());
      HistoryStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HistoryState';

  static HistoryStatus _$status(HistoryState v) => v.status;
  static const Field<HistoryState, HistoryStatus> _f$status =
      Field('status', _$status);
  static String? _$errorMessage(HistoryState v) => v.errorMessage;
  static const Field<HistoryState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);

  @override
  final MappableFields<HistoryState> fields = const {
    #status: _f$status,
    #errorMessage: _f$errorMessage,
  };

  static HistoryState _instantiate(DecodingData data) {
    return HistoryState(
        status: data.dec(_f$status), errorMessage: data.dec(_f$errorMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static HistoryState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HistoryState>(map);
  }

  static HistoryState fromJson(String json) {
    return ensureInitialized().decodeJson<HistoryState>(json);
  }
}

mixin HistoryStateMappable {
  String toJson() {
    return HistoryStateMapper.ensureInitialized()
        .encodeJson<HistoryState>(this as HistoryState);
  }

  Map<String, dynamic> toMap() {
    return HistoryStateMapper.ensureInitialized()
        .encodeMap<HistoryState>(this as HistoryState);
  }

  HistoryStateCopyWith<HistoryState, HistoryState, HistoryState> get copyWith =>
      _HistoryStateCopyWithImpl<HistoryState, HistoryState>(
          this as HistoryState, $identity, $identity);
  @override
  String toString() {
    return HistoryStateMapper.ensureInitialized()
        .stringifyValue(this as HistoryState);
  }

  @override
  bool operator ==(Object other) {
    return HistoryStateMapper.ensureInitialized()
        .equalsValue(this as HistoryState, other);
  }

  @override
  int get hashCode {
    return HistoryStateMapper.ensureInitialized()
        .hashValue(this as HistoryState);
  }
}

extension HistoryStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HistoryState, $Out> {
  HistoryStateCopyWith<$R, HistoryState, $Out> get $asHistoryState =>
      $base.as((v, t, t2) => _HistoryStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HistoryStateCopyWith<$R, $In extends HistoryState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({HistoryStatus? status, String? errorMessage});
  HistoryStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HistoryStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HistoryState, $Out>
    implements HistoryStateCopyWith<$R, HistoryState, $Out> {
  _HistoryStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HistoryState> $mapper =
      HistoryStateMapper.ensureInitialized();
  @override
  $R call({HistoryStatus? status, Object? errorMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage
      }));
  @override
  HistoryState $make(CopyWithData data) => HistoryState(
      status: data.get(#status, or: $value.status),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage));

  @override
  HistoryStateCopyWith<$R2, HistoryState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HistoryStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
