import 'package:flutter/material.dart';

class WrapDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wrap demo"),
      ),
      body: Column(
        children: <Widget>[
          Wrap(
            children: <Widget>[
              Text("xyz" * 110,
                style: TextStyle(letterSpacing: 1.0),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Wrap(
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("A")),
                label: Text("Hamilton"),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("M")),
                label: Text("Lafayette"),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("H")),
                label: Text("Mulligan"),
              ),
              Chip(
                avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text("J")),
                label: Text("Laurens"),
              ),
            ],
            spacing: 8.0,
            runSpacing: 4.0,
            alignment: WrapAlignment.start,
          ),
        ],
      ),
    );
  }
}