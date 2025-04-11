import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'history_bloc.mapper.dart';
part 'history_event.dart';
part 'history_state.dart';

@MappableEnum()
enum HistoryStatus { initial, loading, loaded, error }

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryState.initial()) {
    on<HistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
