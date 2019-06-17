import 'package:flutter/material.dart';

class PointerDemoRoute extends StatefulWidget {
  @override
  _PointerDemoRouteState createState() {
    return _PointerDemoRouteState();
  }
}

class _PointerDemoRouteState extends State<PointerDemoRoute> {
  PointerEvent _event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pointer demo"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Listener(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blue,
                width: 300.0,
                height: 150.0,
                child: Text(
                  _event?.toString() ?? "",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPointerDown: (PointerDownEvent event) =>
                  setState(() => _event = event),
              onPointerMove: (PointerMoveEvent event) =>
                  setState(() => _event = event),
              onPointerUp: (PointerUpEvent event) =>
                  setState(() => _event = event),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                child: Center(
                  child: Text("Box A"),
                ),
              ),
              onPointerDown: (event) => print("down A"),
              behavior: HitTestBehavior.opaque,
            ),
          ],
        ),
      ),
    );
  }
}
