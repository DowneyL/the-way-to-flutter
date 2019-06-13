import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("button demo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("raised", style: TextStyle(color: Colors.blue)),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("flat"),
                onPressed: () => {},
                color: Colors.grey[300],
              ),
              OutlineButton(
                child: Text("outline"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.keyboard_arrow_up),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("Submit"),
                onPressed: () => {},
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              RaisedButton(
                child: Text("Submit"),
                onPressed: () => {},
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}