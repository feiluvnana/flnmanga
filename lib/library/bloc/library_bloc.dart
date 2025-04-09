import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'library_bloc.mapper.dart';
part 'library_event.dart';
part 'library_state.dart';

@MappableEnum()
enum LibraryStatus { initial, loading, loaded, error }

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc() : super(const LibraryState.initial()) {
    on<LibraryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
