import 'package:bikers/pages/auth_home_screen.dart';
import 'package:flutter/material.dart';

import 'pages/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      initialRoute: SplashScreen.route_name,
      routes: {
        SplashScreen.route_name: (ctx) => SplashScreen(),
        AuthHomeScreen.route_name: (ctx) => AuthHomeScreen(),
      },
    );
  }
}
