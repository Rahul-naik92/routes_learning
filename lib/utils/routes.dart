import 'package:flutter/material.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/utils/route_name.dart';

import '../screen_two.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home_screen:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case RouteName.screen_two:
        return MaterialPageRoute(
            builder: (context) => ScreenTwo(
                  data: settings.arguments as Map,
                ));
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Text("No proper Route Defined"),
            );
          },
        );
    }
  }
}
