import 'package:flutter/material.dart';

class ColumnRowDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("column row demo")),
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Hello world "),
                      Text("I am jacky"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text("hello world "),
//              Text("I am Jacky"),
//            ],
//          ),
//          Row(
//            mainAxisSize: MainAxisSize.min,
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Text("hello world 1 "),
//              Text("I am Jacky 1"),
//            ],
//          ),
//          Row(
//            mainAxisAlignment: MainAxisAlignment.end,
//            textDirection: TextDirection.rtl,
//            children: <Widget>[
//              Text("hello world 2 "),
//              Text("I am Jacky 2"),
//            ],
//          ),
//          Row(
//            crossAxisAlignment: CrossAxisAlignment.center,
//            verticalDirection: VerticalDirection.up,
//            children: <Widget>[
//              Text("Hello world 3 ", style: TextStyle(fontSize: 30.0)),
//              Text("I am Jacky 3"),
//            ],
//          ),
//        ],
//      ),
    );
  }
}