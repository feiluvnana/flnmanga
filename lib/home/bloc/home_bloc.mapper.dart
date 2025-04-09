// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'home_bloc.dart';

class HomeEventMapper extends ClassMapperBase<HomeEvent> {
  HomeEventMapper._();

  static HomeEventMapper? _instance;
  static HomeEventMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeEventMapper._());
      HomeTabChangedMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeEvent';

  @override
  final MappableFields<HomeEvent> fields = const {};

  static HomeEvent _instantiate(DecodingData data) {
    return HomeEvent();
  }

  @override
  final Function instantiate = _instantiate;

  static HomeEvent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HomeEvent>(map);
  }

  static HomeEvent fromJson(String json) {
    return ensureInitialized().decodeJson<HomeEvent>(json);
  }
}

mixin HomeEventMappable {
  String toJson() {
    return HomeEventMapper.ensureInitialized()
        .encodeJson<HomeEvent>(this as HomeEvent);
  }

  Map<String, dynamic> toMap() {
    return HomeEventMapper.ensureInitialized()
        .encodeMap<HomeEvent>(this as HomeEvent);
  }

  HomeEventCopyWith<HomeEvent, HomeEvent, HomeEvent> get copyWith =>
      _HomeEventCopyWithImpl<HomeEvent, HomeEvent>(
          this as HomeEvent, $identity, $identity);
  @override
  String toString() {
    return HomeEventMapper.ensureInitialized()
        .stringifyValue(this as HomeEvent);
  }

  @override
  bool operator ==(Object other) {
    return HomeEventMapper.ensureInitialized()
        .equalsValue(this as HomeEvent, other);
  }

  @override
  int get hashCode {
    return HomeEventMapper.ensureInitialized().hashValue(this as HomeEvent);
  }
}

extension HomeEventValueCopy<$R, $Out> on ObjectCopyWith<$R, HomeEvent, $Out> {
  HomeEventCopyWith<$R, HomeEvent, $Out> get $asHomeEvent =>
      $base.as((v, t, t2) => _HomeEventCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HomeEventCopyWith<$R, $In extends HomeEvent, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  HomeEventCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HomeEventCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeEvent, $Out>
    implements HomeEventCopyWith<$R, HomeEvent, $Out> {
  _HomeEventCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeEvent> $mapper =
      HomeEventMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  HomeEvent $make(CopyWithData data) => HomeEvent();

  @override
  HomeEventCopyWith<$R2, HomeEvent, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeEventCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HomeTabChangedMapper extends ClassMapperBase<HomeTabChanged> {
  HomeTabChangedMapper._();

  static HomeTabChangedMapper? _instance;
  static HomeTabChangedMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeTabChangedMapper._());
      HomeEventMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeTabChanged';

  static int _$index(HomeTabChanged v) => v.index;
  static const Field<HomeTabChanged, int> _f$index = Field('index', _$index);

  @override
  final MappableFields<HomeTabChanged> fields = const {
    #index: _f$index,
  };

  static HomeTabChanged _instantiate(DecodingData data) {
    return HomeTabChanged(index: data.dec(_f$index));
  }

  @override
  final Function instantiate = _instantiate;

  static HomeTabChanged fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HomeTabChanged>(map);
  }

  static HomeTabChanged fromJson(String json) {
    return ensureInitialized().decodeJson<HomeTabChanged>(json);
  }
}

mixin HomeTabChangedMappable {
  String toJson() {
    return HomeTabChangedMapper.ensureInitialized()
        .encodeJson<HomeTabChanged>(this as HomeTabChanged);
  }

  Map<String, dynamic> toMap() {
    return HomeTabChangedMapper.ensureInitialized()
        .encodeMap<HomeTabChanged>(this as HomeTabChanged);
  }

  HomeTabChangedCopyWith<HomeTabChanged, HomeTabChanged, HomeTabChanged>
      get copyWith =>
          _HomeTabChangedCopyWithImpl<HomeTabChanged, HomeTabChanged>(
              this as HomeTabChanged, $identity, $identity);
  @override
  String toString() {
    return HomeTabChangedMapper.ensureInitialized()
        .stringifyValue(this as HomeTabChanged);
  }

  @override
  bool operator ==(Object other) {
    return HomeTabChangedMapper.ensureInitialized()
        .equalsValue(this as HomeTabChanged, other);
  }

  @override
  int get hashCode {
    return HomeTabChangedMapper.ensureInitialized()
        .hashValue(this as HomeTabChanged);
  }
}

extension HomeTabChangedValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeTabChanged, $Out> {
  HomeTabChangedCopyWith<$R, HomeTabChanged, $Out> get $asHomeTabChanged =>
      $base.as((v, t, t2) => _HomeTabChangedCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HomeTabChangedCopyWith<$R, $In extends HomeTabChanged, $Out>
    implements HomeEventCopyWith<$R, $In, $Out> {
  @override
  $R call({int? index});
  HomeTabChangedCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeTabChangedCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeTabChanged, $Out>
    implements HomeTabChangedCopyWith<$R, HomeTabChanged, $Out> {
  _HomeTabChangedCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeTabChanged> $mapper =
      HomeTabChangedMapper.ensureInitialized();
  @override
  $R call({int? index}) =>
      $apply(FieldCopyWithData({if (index != null) #index: index}));
  @override
  HomeTabChanged $make(CopyWithData data) =>
      HomeTabChanged(index: data.get(#index, or: $value.index));

  @override
  HomeTabChangedCopyWith<$R2, HomeTabChanged, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeTabChangedCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HomeStatusMapper extends EnumMapper<HomeStatus> {
  HomeStatusMapper._();

  static HomeStatusMapper? _instance;
  static HomeStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeStatusMapper._());
    }
    return _instance!;
  }

  static HomeStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  HomeStatus decode(dynamic value) {
    switch (value) {
      case r'initial':
        return HomeStatus.initial;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(HomeStatus self) {
    switch (self) {
      case HomeStatus.initial:
        return r'initial';
    }
  }
}

extension HomeStatusMapperExtension on HomeStatus {
  String toValue() {
    HomeStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<HomeStatus>(this) as String;
  }
}

class HomeStateMapper extends ClassMapperBase<HomeState> {
  HomeStateMapper._();

  static HomeStateMapper? _instance;
  static HomeStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeStateMapper._());
      HomeStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'HomeState';

  static HomeStatus _$status(HomeState v) => v.status;
  static const Field<HomeState, HomeStatus> _f$status =
      Field('status', _$status);
  static int _$selectedIndex(HomeState v) => v.selectedIndex;
  static const Field<HomeState, int> _f$selectedIndex =
      Field('selectedIndex', _$selectedIndex);

  @override
  final MappableFields<HomeState> fields = const {
    #status: _f$status,
    #selectedIndex: _f$selectedIndex,
  };

  static HomeState _instantiate(DecodingData data) {
    return HomeState(
        status: data.dec(_f$status), selectedIndex: data.dec(_f$selectedIndex));
  }

  @override
  final Function instantiate = _instantiate;

  static HomeState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HomeState>(map);
  }

  static HomeState fromJson(String json) {
    return ensureInitialized().decodeJson<HomeState>(json);
  }
}

mixin HomeStateMappable {
  String toJson() {
    return HomeStateMapper.ensureInitialized()
        .encodeJson<HomeState>(this as HomeState);
  }

  Map<String, dynamic> toMap() {
    return HomeStateMapper.ensureInitialized()
        .encodeMap<HomeState>(this as HomeState);
  }

  HomeStateCopyWith<HomeState, HomeState, HomeState> get copyWith =>
      _HomeStateCopyWithImpl<HomeState, HomeState>(
          this as HomeState, $identity, $identity);
  @override
  String toString() {
    return HomeStateMapper.ensureInitialized()
        .stringifyValue(this as HomeState);
  }

  @override
  bool operator ==(Object other) {
    return HomeStateMapper.ensureInitialized()
        .equalsValue(this as HomeState, other);
  }

  @override
  int get hashCode {
    return HomeStateMapper.ensureInitialized().hashValue(this as HomeState);
  }
}

extension HomeStateValueCopy<$R, $Out> on ObjectCopyWith<$R, HomeState, $Out> {
  HomeStateCopyWith<$R, HomeState, $Out> get $asHomeState =>
      $base.as((v, t, t2) => _HomeStateCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HomeStateCopyWith<$R, $In extends HomeState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({HomeStatus? status, int? selectedIndex});
  HomeStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HomeStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeState, $Out>
    implements HomeStateCopyWith<$R, HomeState, $Out> {
  _HomeStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeState> $mapper =
      HomeStateMapper.ensureInitialized();
  @override
  $R call({HomeStatus? status, int? selectedIndex}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (selectedIndex != null) #selectedIndex: selectedIndex
      }));
  @override
  HomeState $make(CopyWithData data) => HomeState(
      status: data.get(#status, or: $value.status),
      selectedIndex: data.get(#selectedIndex, or: $value.selectedIndex));

  @override
  HomeStateCopyWith<$R2, HomeState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HomeStateCopyWithImpl<$R2, $Out2>($value, $cast, t);
}
