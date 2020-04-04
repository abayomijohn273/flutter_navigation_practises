import 'package:flutter/material.dart';
import 'package:navigation_app/main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Page",
      home: FirstRoute(),
    );
  }
}

// Navigation route
class FirstRoute extends StatelessWidget {
  String _title = "First Navigation Page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: Center(
          child: RaisedButton(
        child: Text('Open Route'),
        padding: EdgeInsets.all(15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondRoute(),
            ),
          );
        },
      )),
    );
  }
}

// the second page when  navigate to this page
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
