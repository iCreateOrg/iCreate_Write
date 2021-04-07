import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:write/views/home/home_view.dart';
import 'package:write/views/login/login_view.dart';
import 'package:write/views/splashscreen/splashscreen_view.dart';
import '../services/route_paths.dart' as routes;



Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case routes.SplashRoute:
      return MaterialPageRoute(builder: (context) => SplashscreenView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}
