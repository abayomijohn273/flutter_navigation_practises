import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (content) => FirstRoute(),
        '/second': (content) => SecondRoute(),
        '/third': (content) => ThirdRoute()
      },
      title: "Navigation Page",
    );
  }
}

// Navigation route
class FirstRoute extends StatelessWidget {
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
          Navigator.pushNamed(
            context,
            '/second',
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
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pop(context);
              },
              child: Text('Go back!'),
            ),
            RaisedButton(
              onPressed: () {
                // Navigate back to first route when tapped.
                Navigator.pushNamed(
                  context,
                  '/third',
                );
              },
              child: Text('Third Route'),
            ),
          ],
        ),
      ),
    );
  }
}

// ANother navigation using a named route
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
