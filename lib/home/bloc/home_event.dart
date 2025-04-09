part of 'home_bloc.dart';

@MappableClass()
class HomeEvent with HomeEventMappable {
  const HomeEvent();
}

@MappableClass()
class HomeTabChanged extends HomeEvent with HomeTabChangedMappable {
  final int index;

  const HomeTabChanged({required this.index});
}
