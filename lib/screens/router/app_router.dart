import 'package:flutter/material.dart';
import 'package:rick_and_morty/exports.dart';

class AppRouter {


  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case MainScreen.id:
        return MaterialPageRoute<String>(
          builder: (_) => MainScreen(),
        );
      case PersonageScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => PersonageScreen(),
        );
      case LocationScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => LocationScreen(),
        );
      case EpisodeScreen.id:
        return MaterialPageRoute<String>(
          settings: routeSettings,
          builder: (_) => EpisodeScreen(),
        );
      default:
        return null;
    }
  }

  static Map? arguments(BuildContext context) =>
      ModalRoute.of(context)!.settings.arguments as Map?;
}
