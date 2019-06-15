import 'package:flutter/material.dart';

Widget redBox = DecoratedBox(
  decoration: BoxDecoration(color: Colors.red),
);

class ConstrainedBoxDemoRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("constrained box"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 50.0
            ),
            child: Container(
              height: 5.0,
              child: redBox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: redBox,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
              child: redBox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
              child: redBox,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
            child: UnconstrainedBox( //去除父级 Constrained Box 的限制
              child: ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: redBox,
              ),
            ),
          ),
        ],
      ),

    );
  }
}