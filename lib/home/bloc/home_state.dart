part of 'home_bloc.dart';

@MappableEnum()
enum HomeStatus { initial }

@MappableClass()
class HomeState with HomeStateMappable {
  final HomeStatus status;
  final int selectedIndex;

  const HomeState({required this.status, required this.selectedIndex});
}
