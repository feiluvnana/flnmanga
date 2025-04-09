import 'package:dart_mappable/dart_mappable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'home_bloc.mapper.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends HydratedBloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(status: HomeStatus.initial, selectedIndex: 0)) {
    on<HomeTabChanged>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    return HomeStateMapper.ensureInitialized().decodeMap(json);
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return HomeStateMapper.ensureInitialized().encodeMap(state);
  }
}
