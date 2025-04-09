import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/history_bloc.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HistoryBloc()..add(const HistoryStarted()), child: const _HistoryView());
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return Scaffold(appBar: AppBar(title: const Text('History')), body: Center(child: _buildBody(state)));
      },
    );
  }

  Widget _buildBody(HistoryState state) {
    switch (state.status) {
      case HistoryStatus.initial:
        return const Text('Initial State');
      case HistoryStatus.loading:
        return const CircularProgressIndicator();
      case HistoryStatus.loaded:
        return const Text('Loaded State');
      case HistoryStatus.error:
        return Text('Error: ${state.errorMessage}');
    }
  }
}
