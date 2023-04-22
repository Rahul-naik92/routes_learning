import 'package:flutter/material.dart';
import 'package:routes/utils/route_name.dart';
import 'package:routes/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteName.home_screen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
