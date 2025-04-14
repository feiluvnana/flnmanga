import 'package:dart_mappable/dart_mappable.dart';
import 'package:mangadexapi/mangadexapi.dart';

part 'responses.mapper.dart';

@MappableClass(discriminatorKey: "result")
class Response with ResponseMappable {
  const Response();
}

@MappableClass(discriminatorValue: "ok", discriminatorKey: "response")
class OkResponse extends Response with OkResponseMappable {
  const OkResponse();
}

@MappableClass(discriminatorValue: "entity")
class EntityResponse<T extends Entity> extends OkResponse with EntityResponseMappable<T> {
  final T data;

  EntityResponse({required this.data});
}

@MappableClass(discriminatorValue: "collection")
class CollectionResponse<T extends Entity> extends OkResponse with CollectionResponseMappable<T> {
  final List<T> data;
  final int limit;
  final int offset;
  final int total;

  CollectionResponse({required this.data, required this.limit, required this.offset, required this.total});
}

@MappableClass(discriminatorValue: MappableClass.useAsDefault)
class AtHomeResponse extends OkResponse with AtHomeResponseMappable {
  final String baseUrl;
  final AtHomeChapter chapter;

  const AtHomeResponse({required this.baseUrl, required this.chapter});

  List<String> get dataUrls => chapter.data.map((e) => "$baseUrl/data/${chapter.hash}/$e").toList();
  List<String> get dataSaverUrls => chapter.dataSaver.map((e) => "$baseUrl/data-saver/${chapter.hash}/$e").toList();
}

@MappableClass()
class AtHomeChapter with AtHomeChapterMappable {
  final String hash;
  final List<String> data;
  final List<String> dataSaver;

  const AtHomeChapter({required this.hash, required this.data, required this.dataSaver});
}

@MappableClass(discriminatorValue: "error")
class ErrorResponse extends Response with ErrorResponseMappable {
  final List<Error> errors;

  ErrorResponse({required this.errors});
}

@MappableClass()
class Error with ErrorMappable {
  final Uuid id;
  final int status;
  final String title;
  final String? detail;
  final String? context;

  const Error({required this.id, required this.status, required this.title, this.detail, this.context});
}
