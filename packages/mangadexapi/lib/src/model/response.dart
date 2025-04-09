import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:mangadexapi/src/util.dart';
import 'package:uuid/uuid.dart';

part 'response.mapper.dart';

@MappableClass(discriminatorKey: "result")
class Response with ResponseMappable {
  const Response();
}

@MappableClass(discriminatorValue: "success", discriminatorKey: "response")
class SuccessResponse extends Response with SuccessResponseMappable {
  const SuccessResponse();
}

@MappableClass(discriminatorValue: "entity")
class EntityResponse<T extends Entity> extends SuccessResponse with EntityResponseMappable<T> {
  final T data;

  EntityResponse({required this.data});
}

@MappableClass(discriminatorValue: "collection")
class CollectionResponse<T extends Entity> extends SuccessResponse with CollectionResponseMappable<T> {
  final List<T> data;
  final int limit;
  final int offset;
  final int total;

  CollectionResponse({required this.data, required this.limit, required this.offset, required this.total});
}

@MappableClass(discriminatorValue: "error")
class ErrorResponse extends Response with ErrorResponseMappable {
  final List<Error> errors;

  ErrorResponse({required this.errors});
}

@MappableClass(includeCustomMappers: [UuidValueMapper()])
class Error with ErrorMappable {
  final UuidValue id;
  final int status;
  final String title;
  final String? detail;
  final String? context;

  const Error({required this.id, required this.status, required this.title, this.detail, this.context});
}
