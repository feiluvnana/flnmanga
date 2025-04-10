import 'package:dart_mappable/dart_mappable.dart';

class Uuid {
  final String value;

  Uuid(this.value) {
    if (!_isValidUuid(value)) {
      throw ArgumentError("$value is not a valid UUID.");
    }
  }

  static bool _isValidUuid(String uuid) {
    final versionPattern = '[45]';
    final regex = RegExp(
      r"^[0-9a-f]{8}-[0-9a-f]{4}-" + versionPattern + r"[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$",
      caseSensitive: false,
    );
    return regex.hasMatch(uuid);
  }

  @override
  String toString() => value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Uuid && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;
}

class UuidMapper extends SimpleMapper<Uuid> {
  const UuidMapper();

  @override
  String encode(Uuid value) => value.value;

  @override
  Uuid decode(Object value) => Uuid(value as String);
}
