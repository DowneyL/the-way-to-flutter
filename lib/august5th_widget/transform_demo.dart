import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transform demo"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors.black26,
                  child: Transform(
                    alignment: Alignment.topRight,
                    transform: Matrix4.skewY(0.3),
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      color: Colors.deepOrangeAccent,
                      child: Text("Apartment for rent!"),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.translate(
                    offset: Offset(-20.0, -5),
                    child: Text("Hello world"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.rotate(
                    angle: math.pi/2,
                    child: Text("hello world"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Text("Hello world"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text("Hello world"),
                  ),
                ),
                Text("你好", style: TextStyle(color: Colors.green),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}