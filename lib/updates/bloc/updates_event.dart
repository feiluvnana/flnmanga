part of 'updates_bloc.dart';

@MappableClass()
class UpdatesEvent with UpdatesEventMappable {
  const UpdatesEvent();
}

@MappableClass()
class UpdatesStarted extends UpdatesEvent {
  const UpdatesStarted();
}

@MappableClass()
class UpdatesRefresh extends UpdatesEvent {
  const UpdatesRefresh();
}
