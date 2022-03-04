import 'package:flutter/material.dart';
import 'package:pos_start/presentation/home/home_screen.dart';
import 'package:pos_start/presentation/login/login_screen.dart';

import 'strings_manager.dart';

class Routes {
  static const String loginRoute = "/";
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
