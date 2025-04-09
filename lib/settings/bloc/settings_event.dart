part of 'settings_bloc.dart';

@MappableClass()
class SettingsEvent with SettingsEventMappable {
  const SettingsEvent();
}

@MappableClass()
class SettingsStarted extends SettingsEvent {
  const SettingsStarted();
}

@MappableClass()
class SettingsRefresh extends SettingsEvent {
  const SettingsRefresh();
}
