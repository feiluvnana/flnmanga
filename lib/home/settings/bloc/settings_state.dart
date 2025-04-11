part of 'settings_bloc.dart';

@MappableClass()
class SettingsState with SettingsStateMappable {
  final SettingsStatus status;
  final String? errorMessage;

  const SettingsState({required this.status, this.errorMessage});

  const SettingsState.initial() : status = SettingsStatus.initial, errorMessage = null;

  const SettingsState.loading() : status = SettingsStatus.loading, errorMessage = null;

  const SettingsState.loaded() : status = SettingsStatus.loaded, errorMessage = null;

  const SettingsState.error(String message) : status = SettingsStatus.error, errorMessage = message;
}
