import 'package:dart_mappable/dart_mappable.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flnmanga/home/browse/view/browse_view.dart';
import 'package:flnmanga/home/history/view/history_view.dart';
import 'package:flnmanga/home/home_view.dart';
import 'package:flnmanga/home/library/view/library_view.dart';
import 'package:flnmanga/home/settings/view/settings_view.dart';
import 'package:flnmanga/home/updates/view/updates_view.dart';
import 'package:flnmanga/manga/view/manga_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mangadexapi/mangadexapi.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MapperContainer.globals.use(const UuidMapper());
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory(await getApplicationDocumentsDirectory().then((value) => value.path)),
  );
  runApp(const FlnManga());
}

class FlnManga extends StatefulWidget {
  const FlnManga({super.key});

  @override
  State<FlnManga> createState() => _FlnMangaState();
}

class _FlnMangaState extends State<FlnManga> {
  final parentNavigatorKey = GlobalKey<NavigatorState>();
  final childNavigatorKey = GlobalKey<NavigatorState>();

  late final router = GoRouter(
    navigatorKey: parentNavigatorKey,
    initialLocation: "/library",
    routes: [
      ShellRoute(
        navigatorKey: childNavigatorKey,
        routes: [
          GoRoute(path: "/library", pageBuilder: (context, state) => const NoTransitionPage(child: LibraryView())),
          GoRoute(path: "/updates", pageBuilder: (context, state) => const NoTransitionPage(child: UpdatesView())),
          GoRoute(path: "/history", pageBuilder: (context, state) => const NoTransitionPage(child: HistoryView())),
          GoRoute(path: "/browse", pageBuilder: (context, state) => const NoTransitionPage(child: BrowseView())),
          GoRoute(path: "/settings", pageBuilder: (context, state) => const NoTransitionPage(child: SettingsView())),
        ],
        builder: (context, state, child) {
          return HomeView(state: state, child: child);
        },
      ),
      GoRoute(path: "/manga/:id", builder: (context, state) => MangaView(mangaId: Uuid(state.pathParameters["id"]!))),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => MangadexApi(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: FlexThemeData.light(scheme: FlexScheme.brandBlue),
        darkTheme: FlexThemeData.dark(scheme: FlexScheme.brandBlue),
        routerConfig: router,
      ),
    );
  }
}
