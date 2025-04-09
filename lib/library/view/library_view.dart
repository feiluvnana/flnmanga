import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/library_bloc.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => LibraryBloc()..add(const LibraryStarted()), child: const _LibraryView());
  }
}

class _LibraryView extends StatelessWidget {
  const _LibraryView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LibraryBloc, LibraryState>(
      builder: (context, state) {
        return Scaffold(appBar: AppBar(title: const Text('Library')), body: Center(child: _buildBody(state)));
      },
    );
  }

  Widget _buildBody(LibraryState state) {
    switch (state.status) {
      case LibraryStatus.initial:
        return const Text('Initial State');
      case LibraryStatus.loading:
        return const CircularProgressIndicator();
      case LibraryStatus.loaded:
        return const Text('Loaded State');
      case LibraryStatus.error:
        return Text('Error: ${state.errorMessage}');
    }
  }
}
