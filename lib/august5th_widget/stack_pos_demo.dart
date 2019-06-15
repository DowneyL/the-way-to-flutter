import 'package:flutter/material.dart';

class StackPosDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack pos demo"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text("I am jacky"),
            ),
            Container(
              child: Text("hello world", style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text("your friend"),
            ),
          ],
        ),
      ),
    );
  }
}