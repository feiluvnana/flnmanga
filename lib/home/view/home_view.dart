import 'package:flnmanga/history/view/history_view.dart';
import 'package:flnmanga/library/view/library_view.dart';
import 'package:flnmanga/settings/view/settings_view.dart';
import 'package:flnmanga/updates/view/updates_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../bloc/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => HomeBloc(), child: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.select<HomeBloc, int>((bloc) => bloc.state.selectedIndex);

    return Scaffold(
      body: [const LibraryView(), const UpdatesView(), const HistoryView(), const SettingsView()][selectedIndex],
      bottomNavigationBar: SalomonBottomBar(
        splashActive: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          context.read<HomeBloc>().add(HomeTabChanged(index: index));
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Symbols.book),
            activeIcon: const Icon(Symbols.book, fill: 1),
            title: const Text("Library"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.work_update),
            activeIcon: const Icon(Symbols.work_update, fill: 1),
            title: const Text("Updates"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.work_history),
            activeIcon: const Icon(Symbols.work_history, fill: 1),
            title: const Text("History"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.settings),
            activeIcon: const Icon(Symbols.settings, fill: 1),
            title: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}
