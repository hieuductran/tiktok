import 'package:flutter/material.dart';
import 'package:tiktok/screens/main/main_screen.dart';
import 'package:tiktok/screens/splash/splash_screen.dart';

class AppRoute {
  static MaterialPageRoute<dynamic> onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(
        builder: (context) => _makeRoute(
            nameRoute: settings.name!,
            context: context,
            arguments: settings.arguments),
      );
  static _makeRoute({
    required String nameRoute,
    required BuildContext context,
    Object? arguments,
  }) {
    switch (nameRoute) {
      case splash:
        return const SplashScreen();
      case mainScreen:
        return const MainScreen();
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Text('$nameRoute is not define !'),
          ),
        );
    }
  }

  // define path screen
  static const String splash = '/';
  static const String mainScreen = 'home';
}
