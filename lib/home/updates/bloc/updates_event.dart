part of 'updates_bloc.dart';

@MappableClass()
class UpdatesEvent with UpdatesEventMappable {
  const UpdatesEvent();
}

@MappableClass()
class UpdatesStarted extends UpdatesEvent with UpdatesStartedMappable {
  const UpdatesStarted();
}

@MappableClass()
class UpdatesRefresh extends UpdatesEvent with UpdatesRefreshMappable {
  const UpdatesRefresh();
}
