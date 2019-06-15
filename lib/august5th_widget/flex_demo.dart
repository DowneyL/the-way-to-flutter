import 'package:flutter/material.dart';

class FlexLayoutDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("flex demo")),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  height: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 30.0,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              height: 200.0,
              child: Flex(
                direction: Axis.vertical,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
             ),
            ),
          ),
        ],
      ),
    );
  }
}