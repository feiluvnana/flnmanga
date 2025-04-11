import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/settings_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsBloc()..add(const SettingsStarted()),
      child: const _SettingsView(),
    );
  }
}

class _SettingsView extends StatelessWidget {
  const _SettingsView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Scaffold(appBar: AppBar(title: const Text('Settings')), body: Center(child: _buildBody(state)));
      },
    );
  }

  Widget _buildBody(SettingsState state) {
    switch (state.status) {
      case SettingsStatus.initial:
        return const Text('Initial State');
      case SettingsStatus.loading:
        return const CircularProgressIndicator();
      case SettingsStatus.loaded:
        return const Text('Loaded State');
      case SettingsStatus.error:
        return Text('Error: ${state.errorMessage}');
    }
  }
}
