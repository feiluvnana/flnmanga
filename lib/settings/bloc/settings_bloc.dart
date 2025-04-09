import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_bloc.mapper.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@MappableEnum()
enum SettingsStatus { initial, loading, loaded, error }

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
