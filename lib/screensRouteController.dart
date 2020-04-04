import 'package:flutter/material.dart';
import 'screens/Home.dart';
import 'screens/About.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Page",
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/about": (context) => About(),
      },
    );
  }
}
