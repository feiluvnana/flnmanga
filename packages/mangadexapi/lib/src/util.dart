import 'package:dart_mappable/dart_mappable.dart';
import 'package:uuid/uuid.dart';

class UuidValueMapper extends SimpleMapper<UuidValue> {
  const UuidValueMapper();

  @override
  UuidValue decode(Object data) {
    try {
      return UuidValue.fromString(data.toString());
    } catch (e) {
      throw FormatException('Invalid UUID format: ${data.toString()}');
    }
  }

  @override
  String encode(UuidValue data) => data.toString();
}
