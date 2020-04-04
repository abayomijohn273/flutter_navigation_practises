import 'package:flutter/material.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Container(
        child: Center(
          child: Text("Aboutpage Content"),
        ),
      ),
    );
  }
}
