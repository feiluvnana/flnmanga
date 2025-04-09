part of 'history_bloc.dart';

@MappableClass()
class HistoryState with HistoryStateMappable {
  final HistoryStatus status;
  final String? errorMessage;

  const HistoryState({required this.status, this.errorMessage});

  const HistoryState.initial() : status = HistoryStatus.initial, errorMessage = null;

  const HistoryState.loading() : status = HistoryStatus.loading, errorMessage = null;

  const HistoryState.loaded() : status = HistoryStatus.loaded, errorMessage = null;

  const HistoryState.error(String message) : status = HistoryStatus.error, errorMessage = message;
}
