// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'updates_bloc.dart';

class UpdatesStatusMapper extends EnumMapper<UpdatesStatus> {
  UpdatesStatusMapper._();

  static UpdatesStatusMapper? _instance;
  static UpdatesStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatesStatusMapper._());
    }
    return _instance!;
  }

  static UpdatesStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  UpdatesStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return UpdatesStatus.initial;
      case r'loading':
        return UpdatesStatus.loading;
      case r'loaded':
        return UpdatesStatus.loaded;
      case r'error':
        return UpdatesStatus.error;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(UpdatesStatus self) {
    switch (self) {
      case UpdatesStatus.initial:
        return r'initial';
      case UpdatesStatus.loading:
        return r'loading';
      case UpdatesStatus.loaded:
        return r'loaded';
      case UpdatesStatus.error:
        return r'error';
    }
  }
}

extension UpdatesStatusMapperExtension on UpdatesStatus {
  String toValue() {
    UpdatesStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<UpdatesStatus>(this) as String;
  }
}

class UpdatesEventMapper extends ClassMapperBase<UpdatesEvent> {
  UpdatesEventMapper._();

  static UpdatesEventMapper? _instance;
  static UpdatesEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatesEventMapper._());
      UpdatesStartedMapper.ensureInitialized();
      UpdatesRefreshMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatesEvent';

  @override
  final MappableFields<UpdatesEvent> fields = const {};

  static UpdatesEvent _instantiate(DecodingData data) {
    return UpdatesEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatesEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatesEvent>(map);
  }

  static UpdatesEvent fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatesEvent>(json);
  }
}

mixin UpdatesEventMappable {
  String toJson() {
    return UpdatesEventMapper.ensureInitialized()
        .encodeJson<UpdatesEvent>(this as UpdatesEvent);
  }

  Map<String, dynamic> toMap() {
    return UpdatesEventMapper.ensureInitialized()
        .encodeMap<UpdatesEvent>(this as UpdatesEvent);
  }

  UpdatesEventCopyWith<UpdatesEvent, UpdatesEvent, UpdatesEvent> get copyWith =>
      _UpdatesEventCopyWithImpl<UpdatesEvent, UpdatesEvent>(
          this as UpdatesEvent, $identity, $identity);
  @override
  String toString() {
    return UpdatesEventMapper.ensureInitialized()
        .stringifyValue(this as UpdatesEvent);
  }

  @override
  bool operator ==(Object other) {
    return UpdatesEventMapper.ensureInitialized()
        .equalsValue(this as UpdatesEvent, other);
  }

  @override
  int get hashCode {
    return UpdatesEventMapper.ensureInitialized()
        .hashValue(this as UpdatesEvent);
  }
}

extension UpdatesEventValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatesEvent, $Out> {
  UpdatesEventCopyWith<$R, UpdatesEvent, $Out> get $asUpdatesEvent =>
      $base.as((v, t, t2) => _UpdatesEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdatesEventCopyWith<$R, $In extends UpdatesEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  UpdatesEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpdatesEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatesEvent, $Out>
    implements UpdatesEventCopyWith<$R, UpdatesEvent, $Out> {
  _UpdatesEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatesEvent> $mapper =
      UpdatesEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  UpdatesEvent $make(CopyWithData data) => UpdatesEvent();

  @override
  UpdatesEventCopyWith<$R2, UpdatesEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatesEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpdatesStartedMapper extends ClassMapperBase<UpdatesStarted> {
  UpdatesStartedMapper._();

  static UpdatesStartedMapper? _instance;
  static UpdatesStartedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatesStartedMapper._());
      UpdatesEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatesStarted';

  @override
  final MappableFields<UpdatesStarted> fields = const {};

  static UpdatesStarted _instantiate(DecodingData data) {
    return UpdatesStarted();
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatesStarted fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatesStarted>(map);
  }

  static UpdatesStarted fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatesStarted>(json);
  }
}

mixin UpdatesStartedMappable {
  String toJson() {
    return UpdatesStartedMapper.ensureInitialized()
        .encodeJson<UpdatesStarted>(this as UpdatesStarted);
  }

  Map<String, dynamic> toMap() {
    return UpdatesStartedMapper.ensureInitialized()
        .encodeMap<UpdatesStarted>(this as UpdatesStarted);
  }

  UpdatesStartedCopyWith<UpdatesStarted, UpdatesStarted, UpdatesStarted>
      get copyWith =>
          _UpdatesStartedCopyWithImpl<UpdatesStarted, UpdatesStarted>(
              this as UpdatesStarted, $identity, $identity);
  @override
  String toString() {
    return UpdatesStartedMapper.ensureInitialized()
        .stringifyValue(this as UpdatesStarted);
  }

  @override
  bool operator ==(Object other) {
    return UpdatesStartedMapper.ensureInitialized()
        .equalsValue(this as UpdatesStarted, other);
  }

  @override
  int get hashCode {
    return UpdatesStartedMapper.ensureInitialized()
        .hashValue(this as UpdatesStarted);
  }
}

extension UpdatesStartedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatesStarted, $Out> {
  UpdatesStartedCopyWith<$R, UpdatesStarted, $Out> get $asUpdatesStarted =>
      $base.as((v, t, t2) => _UpdatesStartedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdatesStartedCopyWith<$R, $In extends UpdatesStarted, $Out>
    implements UpdatesEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  UpdatesStartedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdatesStartedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatesStarted, $Out>
    implements UpdatesStartedCopyWith<$R, UpdatesStarted, $Out> {
  _UpdatesStartedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatesStarted> $mapper =
      UpdatesStartedMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  UpdatesStarted $make(CopyWithData data) => UpdatesStarted();

  @override
  UpdatesStartedCopyWith<$R2, UpdatesStarted, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatesStartedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpdatesRefreshMapper extends ClassMapperBase<UpdatesRefresh> {
  UpdatesRefreshMapper._();

  static UpdatesRefreshMapper? _instance;
  static UpdatesRefreshMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatesRefreshMapper._());
      UpdatesEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatesRefresh';

  @override
  final MappableFields<UpdatesRefresh> fields = const {};

  static UpdatesRefresh _instantiate(DecodingData data) {
    return UpdatesRefresh();
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatesRefresh fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatesRefresh>(map);
  }

  static UpdatesRefresh fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatesRefresh>(json);
  }
}

mixin UpdatesRefreshMappable {
  String toJson() {
    return UpdatesRefreshMapper.ensureInitialized()
        .encodeJson<UpdatesRefresh>(this as UpdatesRefresh);
  }

  Map<String, dynamic> toMap() {
    return UpdatesRefreshMapper.ensureInitialized()
        .encodeMap<UpdatesRefresh>(this as UpdatesRefresh);
  }

  UpdatesRefreshCopyWith<UpdatesRefresh, UpdatesRefresh, UpdatesRefresh>
      get copyWith =>
          _UpdatesRefreshCopyWithImpl<UpdatesRefresh, UpdatesRefresh>(
              this as UpdatesRefresh, $identity, $identity);
  @override
  String toString() {
    return UpdatesRefreshMapper.ensureInitialized()
        .stringifyValue(this as UpdatesRefresh);
  }

  @override
  bool operator ==(Object other) {
    return UpdatesRefreshMapper.ensureInitialized()
        .equalsValue(this as UpdatesRefresh, other);
  }

  @override
  int get hashCode {
    return UpdatesRefreshMapper.ensureInitialized()
        .hashValue(this as UpdatesRefresh);
  }
}

extension UpdatesRefreshValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatesRefresh, $Out> {
  UpdatesRefreshCopyWith<$R, UpdatesRefresh, $Out> get $asUpdatesRefresh =>
      $base.as((v, t, t2) => _UpdatesRefreshCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdatesRefreshCopyWith<$R, $In extends UpdatesRefresh, $Out>
    implements UpdatesEventCopyWith<$R, $In, $Out> {
  @override
  $R call();
  UpdatesRefreshCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UpdatesRefreshCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatesRefresh, $Out>
    implements UpdatesRefreshCopyWith<$R, UpdatesRefresh, $Out> {
  _UpdatesRefreshCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatesRefresh> $mapper =
      UpdatesRefreshMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  UpdatesRefresh $make(CopyWithData data) => UpdatesRefresh();

  @override
  UpdatesRefreshCopyWith<$R2, UpdatesRefresh, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatesRefreshCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class UpdatesStateMapper extends ClassMapperBase<UpdatesState> {
  UpdatesStateMapper._();

  static UpdatesStateMapper? _instance;
  static UpdatesStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UpdatesStateMapper._());
      UpdatesStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UpdatesState';

  static UpdatesStatus _$status(UpdatesState v) => v.status;
  static const Field<UpdatesState, UpdatesStatus> _f$status =
      Field('status', _$status);
  static String? _$errorMessage(UpdatesState v) => v.errorMessage;
  static const Field<UpdatesState, String> _f$errorMessage =
      Field('errorMessage', _$errorMessage, opt: true);

  @override
  final MappableFields<UpdatesState> fields = const {
    #status: _f$status,
    #errorMessage: _f$errorMessage,
  };

  static UpdatesState _instantiate(DecodingData data) {
    return UpdatesState(
        status: data.dec(_f$status), errorMessage: data.dec(_f$errorMessage));
  }

  @override
  final Function instantiate = _instantiate;

  static UpdatesState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UpdatesState>(map);
  }

  static UpdatesState fromJson(String json) {
    return ensureInitialized().decodeJson<UpdatesState>(json);
  }
}

mixin UpdatesStateMappable {
  String toJson() {
    return UpdatesStateMapper.ensureInitialized()
        .encodeJson<UpdatesState>(this as UpdatesState);
  }

  Map<String, dynamic> toMap() {
    return UpdatesStateMapper.ensureInitialized()
        .encodeMap<UpdatesState>(this as UpdatesState);
  }

  UpdatesStateCopyWith<UpdatesState, UpdatesState, UpdatesState> get copyWith =>
      _UpdatesStateCopyWithImpl<UpdatesState, UpdatesState>(
          this as UpdatesState, $identity, $identity);
  @override
  String toString() {
    return UpdatesStateMapper.ensureInitialized()
        .stringifyValue(this as UpdatesState);
  }

  @override
  bool operator ==(Object other) {
    return UpdatesStateMapper.ensureInitialized()
        .equalsValue(this as UpdatesState, other);
  }

  @override
  int get hashCode {
    return UpdatesStateMapper.ensureInitialized()
        .hashValue(this as UpdatesState);
  }
}

extension UpdatesStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UpdatesState, $Out> {
  UpdatesStateCopyWith<$R, UpdatesState, $Out> get $asUpdatesState =>
      $base.as((v, t, t2) => _UpdatesStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class UpdatesStateCopyWith<$R, $In extends UpdatesState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({UpdatesStatus? status, String? errorMessage});
  UpdatesStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UpdatesStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UpdatesState, $Out>
    implements UpdatesStateCopyWith<$R, UpdatesState, $Out> {
  _UpdatesStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UpdatesState> $mapper =
      UpdatesStateMapper.ensureInitialized();
  @override
  $R call({UpdatesStatus? status, Object? errorMessage = $none}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (errorMessage != $none) #errorMessage: errorMessage
      }));
  @override
  UpdatesState $make(CopyWithData data) => UpdatesState(
      status: data.get(#status, or: $value.status),
      errorMessage: data.get(#errorMessage, or: $value.errorMessage));

  @override
  UpdatesStateCopyWith<$R2, UpdatesState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UpdatesStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
