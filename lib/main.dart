import 'package:flutter/material.dart';
import 'package:write/UI/screens/home.dart';
import 'package:write/UI/screens/login.dart';
import 'package:write/UI/screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login()
    );
  }
}
