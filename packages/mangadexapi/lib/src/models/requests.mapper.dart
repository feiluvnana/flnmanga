// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'requests.dart';

class ConditionMapper extends EnumMapper<Condition> {
  ConditionMapper._();

  static ConditionMapper? _instance;
  static ConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConditionMapper._());
    }
    return _instance!;
  }

  static Condition fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Condition decode(dynamic value) {
    switch (value) {
      case r'AND':
        return Condition.AND;
      case r'OR':
        return Condition.OR;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Condition self) {
    switch (self) {
      case Condition.AND:
        return r'AND';
      case Condition.OR:
        return r'OR';
    }
  }
}

extension ConditionMapperExtension on Condition {
  String toValue() {
    ConditionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Condition>(this) as String;
  }
}

class OrderMapper extends EnumMapper<Order> {
  OrderMapper._();

  static OrderMapper? _instance;
  static OrderMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OrderMapper._());
    }
    return _instance!;
  }

  static Order fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Order decode(dynamic value) {
    switch (value) {
      case r'asc':
        return Order.asc;
      case r'desc':
        return Order.desc;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Order self) {
    switch (self) {
      case Order.asc:
        return r'asc';
      case Order.desc:
        return r'desc';
    }
  }
}

extension OrderMapperExtension on Order {
  String toValue() {
    OrderMapper.ensureInitialized();
    return MapperContainer.globals.toValue<Order>(this) as String;
  }
}
