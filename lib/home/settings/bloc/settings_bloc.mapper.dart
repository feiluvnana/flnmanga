// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'settings_bloc.dart';

class SettingsStatusMapper extends EnumMapper<SettingsStatus> {
  SettingsStatusMapper._();

  static SettingsStatusMapper? _instance;
  static SettingsStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStatusMapper._());
    }
    return _instance!;
  }

  static SettingsStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  SettingsStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return SettingsStatus.initial;
      case r'loading':
        return SettingsStatus.loading;
      case r'loaded':
        return SettingsStatus.loaded;
      case r'error':
        return SettingsStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(SettingsStatus self) {
    switch (self) {
      case SettingsStatus.initial:
        return r'initial';
      case SettingsStatus.loading:
        return r'loading';
      case SettingsStatus.loaded:
        return r'loaded';
      case SettingsStatus.error:
        return r'error';
    }
  }
}

extension SettingsStatusMapperExtension on SettingsStatus {
  String toValue() {
    SettingsStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<SettingsStatus>(this) as String;
  }
}

class SettingsEventMapper extends ClassMapperBase<SettingsEvent> {
  SettingsEventMapper._();

  static SettingsEventMapper? _instance;
  static SettingsEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsEventMapper._());
      SettingsStartedMapper.ensureInitialized();
      SettingsRefreshMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsEvent';

  @override
  final MappableFields<SettingsEvent> fields = const {};

  static SettingsEvent _instantiate(DecodingData data) {
    return SettingsEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsEvent>(map);
  }

  static SettingsEvent fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsEvent>(json);
  }
}

mixin SettingsEventMappable {
  String toJson() {
    return SettingsEventMapper.ensureInitialized()
        .encodeJson<SettingsEvent>(this as SettingsEvent);
  }

  Map<String, dynamic> toMap() {
    return SettingsEventMapper.ensureInitialized()
        .encodeMap<SettingsEvent>(this as SettingsEvent);
  }

  SettingsEventCopyWith<SettingsEvent, SettingsEvent, SettingsEvent>
      get copyWith => _SettingsEventCopyWithImpl<SettingsEvent, SettingsEvent>(
          this as SettingsEvent, $identity, $identity);
  @override
  String toString() {
    return SettingsEventMapper.ensureInitialized()
        .stringifyValue(this as SettingsEvent);
  }

  @override
  bool operator ==(Object other) {
    return SettingsEventMapper.ensureInitialized()
        .equalsValue(this as SettingsEvent, other);
  }

  @override
  int get hashCode {
    return SettingsEventMapper.ensureInitialized()
        .hashValue(this as SettingsEvent);
  }
}

extension SettingsEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsEvent, $Out> {
  SettingsEventCopyWith<$R, SettingsEvent, $Out> get $asSettingsEvent =>
      $base.as((v, t, t2) => _SettingsEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingsEventCopyWith<$R, $In extends SettingsEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  SettingsEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SettingsEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsEvent, $Out>
    implements SettingsEventCopyWith<$R, SettingsEvent, $Out> {
  _SettingsEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsEvent> $mapper =
      SettingsEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SettingsEvent $make(CopyWithData data) => SettingsEvent();

  @override
  SettingsEventCopyWith<$R2, SettingsEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsStartedMapper extends ClassMapperBase<SettingsStarted> {
  SettingsStartedMapper._();

  static SettingsStartedMapper? _instance;
  static SettingsStartedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStartedMapper._());
      SettingsEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsStarted';

  @override
  final MappableFields<SettingsStarted> fields = const {};

  static SettingsStarted _instantiate(DecodingData data) {
    return SettingsStarted();
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsStarted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsStarted>(map);
  }

  static SettingsStarted fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsStarted>(json);
  }
}

mixin SettingsStartedMappable {
  String toJson() {
    return SettingsStartedMapper.ensureInitialized()
        .encodeJson<SettingsStarted>(this as SettingsStarted);
  }

  Map<String, dynamic> toMap() {
    return SettingsStartedMapper.ensureInitialized()
        .encodeMap<SettingsStarted>(this as SettingsStarted);
  }

  SettingsStartedCopyWith<SettingsStarted, SettingsStarted, SettingsStarted>
      get copyWith =>
          _SettingsStartedCopyWithImpl<SettingsStarted, SettingsStarted>(
              this as SettingsStarted, $identity, $identity);
  @override
  String toString() {
    return SettingsStartedMapper.ensureInitialized()
        .stringifyValue(this as SettingsStarted);
  }

  @override
  bool operator ==(Object other) {
    return SettingsStartedMapper.ensureInitialized()
        .equalsValue(this as SettingsStarted, other);
  }

  @override
  int get hashCode {
    return SettingsStartedMapper.ensureInitialized()
        .hashValue(this as SettingsStarted);
  }
}

extension SettingsStartedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsStarted, $Out> {
  SettingsStartedCopyWith<$R, SettingsStarted, $Out> get $asSettingsStarted =>
      $base.as((v, t, t2) => _SettingsStartedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingsStartedCopyWith<$R, $In extends SettingsStarted, $Out>
    implements SettingsEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SettingsStartedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SettingsStartedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsStarted, $Out>
    implements SettingsStartedCopyWith<$R, SettingsStarted, $Out> {
  _SettingsStartedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsStarted> $mapper =
      SettingsStartedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SettingsStarted $make(CopyWithData data) => SettingsStarted();

  @override
  SettingsStartedCopyWith<$R2, SettingsStarted, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsStartedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsRefreshMapper extends ClassMapperBase<SettingsRefresh> {
  SettingsRefreshMapper._();

  static SettingsRefreshMapper? _instance;
  static SettingsRefreshMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsRefreshMapper._());
      SettingsEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsRefresh';

  @override
  final MappableFields<SettingsRefresh> fields = const {};

  static SettingsRefresh _instantiate(DecodingData data) {
    return SettingsRefresh();
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsRefresh fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsRefresh>(map);
  }

  static SettingsRefresh fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsRefresh>(json);
  }
}

mixin SettingsRefreshMappable {
  String toJson() {
    return SettingsRefreshMapper.ensureInitialized()
        .encodeJson<SettingsRefresh>(this as SettingsRefresh);
  }

  Map<String, dynamic> toMap() {
    return SettingsRefreshMapper.ensureInitialized()
        .encodeMap<SettingsRefresh>(this as SettingsRefresh);
  }

  SettingsRefreshCopyWith<SettingsRefresh, SettingsRefresh, SettingsRefresh>
      get copyWith =>
          _SettingsRefreshCopyWithImpl<SettingsRefresh, SettingsRefresh>(
              this as SettingsRefresh, $identity, $identity);
  @override
  String toString() {
    return SettingsRefreshMapper.ensureInitialized()
        .stringifyValue(this as SettingsRefresh);
  }

  @override
  bool operator ==(Object other) {
    return SettingsRefreshMapper.ensureInitialized()
        .equalsValue(this as SettingsRefresh, other);
  }

  @override
  int get hashCode {
    return SettingsRefreshMapper.ensureInitialized()
        .hashValue(this as SettingsRefresh);
  }
}

extension SettingsRefreshValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsRefresh, $Out> {
  SettingsRefreshCopyWith<$R, SettingsRefresh, $Out> get $asSettingsRefresh =>
      $base.as((v, t, t2) => _SettingsRefreshCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingsRefreshCopyWith<$R, $In extends SettingsRefresh, $Out>
    implements SettingsEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  SettingsRefreshCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SettingsRefreshCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsRefresh, $Out>
    implements SettingsRefreshCopyWith<$R, SettingsRefresh, $Out> {
  _SettingsRefreshCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsRefresh> $mapper =
      SettingsRefreshMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  SettingsRefresh $make(CopyWithData data) => SettingsRefresh();

  @override
  SettingsRefreshCopyWith<$R2, SettingsRefresh, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsRefreshCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SettingsStateMapper extends ClassMapperBase<SettingsState> {
  SettingsStateMapper._();

  static SettingsStateMapper? _instance;
  static SettingsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsStateMapper._());
      SettingsStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'SettingsState';

  static SettingsStatus _$status(SettingsState v) => v.status;
  static const Field<SettingsState, SettingsStatus> _f$status =
      Field('status', _$status);
  static String? _$errorMessage(SettingsState v) => v.errorMessage;
  static const Field<SettingsState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);

  @override
  final MappableFields<SettingsState> fields = const {
    #status: _f$status,
    #errorMessage: _f$errorMessage,
  };

  static SettingsState _instantiate(DecodingData data) {
    return SettingsState(
        status: data.dec(_f$status), errorMessage: data.dec(_f$errorMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsState>(map);
  }

  static SettingsState fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsState>(json);
  }
}

mixin SettingsStateMappable {
  String toJson() {
    return SettingsStateMapper.ensureInitialized()
        .encodeJson<SettingsState>(this as SettingsState);
  }

  Map<String, dynamic> toMap() {
    return SettingsStateMapper.ensureInitialized()
        .encodeMap<SettingsState>(this as SettingsState);
  }

  SettingsStateCopyWith<SettingsState, SettingsState, SettingsState>
      get copyWith => _SettingsStateCopyWithImpl<SettingsState, SettingsState>(
          this as SettingsState, $identity, $identity);
  @override
  String toString() {
    return SettingsStateMapper.ensureInitialized()
        .stringifyValue(this as SettingsState);
  }

  @override
  bool operator ==(Object other) {
    return SettingsStateMapper.ensureInitialized()
        .equalsValue(this as SettingsState, other);
  }

  @override
  int get hashCode {
    return SettingsStateMapper.ensureInitialized()
        .hashValue(this as SettingsState);
  }
}

extension SettingsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsState, $Out> {
  SettingsStateCopyWith<$R, SettingsState, $Out> get $asSettingsState =>
      $base.as((v, t, t2) => _SettingsStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SettingsStateCopyWith<$R, $In extends SettingsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({SettingsStatus? status, String? errorMessage});
  SettingsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SettingsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsState, $Out>
    implements SettingsStateCopyWith<$R, SettingsState, $Out> {
  _SettingsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsState> $mapper =
      SettingsStateMapper.ensureInitialized();
  @override
  $R call({SettingsStatus? status, Object? errorMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage
      }));
  @override
  SettingsState $make(CopyWithData data) => SettingsState(
      status: data.get(#status, or: $value.status),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage));

  @override
  SettingsStateCopyWith<$R2, SettingsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
