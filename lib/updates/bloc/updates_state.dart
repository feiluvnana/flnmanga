part of 'updates_bloc.dart';

@MappableClass()
class UpdatesState with UpdatesStateMappable {
  final UpdatesStatus status;
  final String? errorMessage;

  const UpdatesState({required this.status, this.errorMessage});

  const UpdatesState.initial() : status = UpdatesStatus.initial, errorMessage = null;

  const UpdatesState.loading() : status = UpdatesStatus.loading, errorMessage = null;

  const UpdatesState.loaded() : status = UpdatesStatus.loaded, errorMessage = null;

  const UpdatesState.error(String message) : status = UpdatesStatus.error, errorMessage = message;
}
