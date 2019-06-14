import 'package:flutter/material.dart';

class TextFocusDemoWidget extends StatefulWidget {
  @override
  _TextFocusDemoWidgetState createState() => _TextFocusDemoWidgetState();
}

class _TextFocusDemoWidgetState extends State<TextFocusDemoWidget> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("text focus demo")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
              focusNode: focusNode1,
              decoration: InputDecoration(
                labelText: "input1",
              ),
            ),
            TextField(
              focusNode: focusNode2,
              decoration: InputDecoration(
                labelText: "input2",
              ),
            ),
            Builder(builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text("移动焦点"),
                    onPressed: () {
                      if (focusScopeNode == null) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text("隐藏键盘"),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}