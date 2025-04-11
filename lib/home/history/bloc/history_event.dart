part of 'history_bloc.dart';

@MappableClass()
class HistoryEvent with HistoryEventMappable {
  const HistoryEvent();
}

@MappableClass()
class HistoryStarted extends HistoryEvent {
  const HistoryStarted();
}

@MappableClass()
class HistoryRefresh extends HistoryEvent {
  const HistoryRefresh();
}
