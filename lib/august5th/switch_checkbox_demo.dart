import 'package:flutter/material.dart';

class SwitchAndCheckboxDemoWidget extends StatefulWidget {
  @override
  _SwitchAndCheckboxDemoWidgetState createState() => new _SwitchAndCheckboxDemoWidgetState();
}

class _SwitchAndCheckboxDemoWidgetState extends State<SwitchAndCheckboxDemoWidget> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("switch and checkbox demo"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Switch(
                value: _switchSelected,
                activeColor: Colors.green[400],
                onChanged: (value) {
                  print(value);
                  setState(() {
                    _switchSelected = value;
                  });
                },
              ),
              Checkbox(
                value: _checkboxSelected,
                activeColor: Colors.blue,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    _checkboxSelected = value;
                  });
                },
                tristate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}