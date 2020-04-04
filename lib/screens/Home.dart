import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(child: Text("Homepage Content")),
            RaisedButton(
              child: Text("About Us"),
              onPressed: () {
                Navigator.pushNamed(context, "/about");
              },
            ),
          ],
        ),
      ),
    );
  }
}
