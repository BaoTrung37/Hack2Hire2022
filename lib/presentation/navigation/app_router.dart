import 'package:example_hack2hire/presentation/navigation/app_routes.dart';
import 'package:example_hack2hire/presentation/page/home/home_view.dart';
import 'package:example_hack2hire/presentation/page/seat/seat_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    debugPrint('----> Navigate to route: ${settings.name}');

    // TODO: Check user login state here

    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => const HomeView(),
        );
      case AppRoutes.seat:
        final args = settings.arguments as SeatViewArguments;
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => SeatView(
            showId: args.showId,
            showName: args.showName,
          ),
        );
    }
    return null;
  }
}
