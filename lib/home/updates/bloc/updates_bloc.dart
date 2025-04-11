import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'updates_bloc.mapper.dart';
part 'updates_event.dart';
part 'updates_state.dart';

@MappableEnum()
enum UpdatesStatus { initial, loading, loaded, error }

class UpdatesBloc extends Bloc<UpdatesEvent, UpdatesState> {
  UpdatesBloc() : super(const UpdatesState.initial()) {
    on<UpdatesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
