import 'package:example_hack2hire/data/providers/app_navigatior_provider.dart';
import 'package:example_hack2hire/injection/app_modules.dart';
import 'package:example_hack2hire/injection/injector.dart';
import 'package:example_hack2hire/presentation/navigation/app_router.dart';
import 'package:example_hack2hire/presentation/navigation/app_routes.dart';
import 'package:example_hack2hire/presentation/resources/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppModules.inject();
  await injector.allReady();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const App());
}

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _MyApp(),
    );
  }
}

class _MyApp extends ConsumerStatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<_MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hack2Hire',
      theme: getAppTheme(),
      initialRoute: AppRoutes.home,
      navigatorKey: ref.read(appNavigatorProvider).navigatorKey,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
