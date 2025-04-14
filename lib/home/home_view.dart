import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeView extends StatelessWidget {
  final GoRouterState state;
  final Widget child;

  const HomeView({super.key, required this.state, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: SalomonBottomBar(
        splashActive: false,
        currentIndex: ["/library", "/updates", "/history", "/browse", "/settings"].indexOf(state.uri.toString()),
        onTap: (index) {
          context.go(["/library", "/updates", "/history", "/browse", "/settings"][index]);
        },
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Symbols.book_rounded),
            activeIcon: const Icon(Symbols.book_rounded, fill: 1),
            title: const Text("Library"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.work_update_rounded),
            activeIcon: const Icon(Symbols.work_update_rounded, fill: 1),
            title: const Text("Updates"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.work_history_rounded),
            activeIcon: const Icon(Symbols.work_history_rounded, fill: 1),
            title: const Text("History"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.browse_rounded),
            activeIcon: const Icon(Symbols.browse_rounded, fill: 1),
            title: const Text("Browse"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Symbols.settings_rounded),
            activeIcon: const Icon(Symbols.settings_rounded, fill: 1),
            title: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}
