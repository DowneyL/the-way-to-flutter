import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    icons += "\uE914";
    icons += "\uE000";
    icons += "\uE90D";

    return Scaffold(
      appBar: AppBar(title: Text("icon demo")),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(icons,
                style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green[400],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green[400],
                    size: 24.0,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green[400],
                    size: 24.0,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green[400],
                    size: 24.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}