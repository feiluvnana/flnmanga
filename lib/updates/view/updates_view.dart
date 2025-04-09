import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/updates_bloc.dart';

class UpdatesView extends StatelessWidget {
  const UpdatesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => UpdatesBloc()..add(const UpdatesStarted()), child: const _UpdatesView());
  }
}

class _UpdatesView extends StatelessWidget {
  const _UpdatesView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdatesBloc, UpdatesState>(
      builder: (context, state) {
        return Scaffold(appBar: AppBar(title: const Text('Updates')), body: Center(child: _buildBody(state)));
      },
    );
  }

  Widget _buildBody(UpdatesState state) {
    switch (state.status) {
      case UpdatesStatus.initial:
        return const Text('Initial State');
      case UpdatesStatus.loading:
        return const CircularProgressIndicator();
      case UpdatesStatus.loaded:
        return const Text('Loaded State');
      case UpdatesStatus.error:
        return Text('Error: ${state.errorMessage}');
    }
  }
}
