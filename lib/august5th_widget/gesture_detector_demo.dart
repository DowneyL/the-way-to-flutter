import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class GestureDetectorDemoRoute extends StatefulWidget {
  @override
  State createState() {
    return _GestureDetectorDemoRouteState();
  }
}

class _GestureDetectorDemoRouteState extends State<GestureDetectorDemoRoute> {
  String _operation = "No Gesture detected!";
  double _top = 0.0;
  double _left = 0.0;
  double _width = 200.0;
  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gesture detector demo"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: .0),
        child: Center(
//          child: Column(
//            children: <Widget>[
//              GestureDetector(
//                child: Container(
//                  alignment: Alignment.center,
//                  color: Colors.blue,
//                  width: 200.0,
//                  height: 100.0,
//                  child: Text(
//                    _operation,
//                    style: TextStyle(color: Colors.white),
//                  ),
//                ),
//                onTap: () => updateOperationText("Tap"),
//                onDoubleTap: () => updateOperationText("Double Tap"),
//                onLongPress: () => updateOperationText("Long Press"),
//              ),
//            ],
//          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: _top,
                left: _left,
                child: GestureDetector(
                  child: CircleAvatar(
                    child: Text("A"),
                  ),
//                  onPanDown: (e) {
//                    print("pan down:${e.globalPosition}");
//                  },
                  onVerticalDragUpdate: (e) {
                    setState(() {
                      _top += e.delta.dy;
//                      _left += e.delta.dx;
                    });
                  },
                  onHorizontalDragUpdate: (e) {
                    print("hori");
                    setState(() {
//                      _top += e.delta.dy;
                      _left += e.delta.dx;
                    });
                  },
//                  onPanEnd: (e) {
//                    print(e.velocity);
//                  },
                  onTapDown: (e) {
                    print("tap down");
                  },
                  onTapUp: (e) {
                    print("tap up");
                  },
                  onHorizontalDragEnd: (e) {
                    print("hori end");
                  },
                ),
              ),
            ],
          ),
//          child: GestureDetector(
//            child: Image.asset(
//              "assets/images/mobu.jpeg",
//              width: _width,
//            ),
//            onScaleUpdate: (e) {
//              setState(() {
//                _width = 200 * e.scale.clamp(.8, 10.0);
//              });
//            },
//          ),
//          child: Text.rich(TextSpan(
//            children: [
//              TextSpan(text: "Hello Worlds: "),
//              TextSpan(
//                text: "click me",
//                style: TextStyle(
//                  fontSize: 25.0,
//                  color: _toggle ? Colors.blue : Colors.red,
//                ),
//                recognizer: _tapGestureRecognizer
//                  ..onTap = () {
//                    setState(() {
//                      _toggle = !_toggle;
//                    });
//                  },
//              ),
//            ],
//          )),
        ),
      ),
    );
  }

  @override
  void dispose() {
    print("dispose");
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void updateOperationText(String text) {
    setState(() {
      _operation = text;
    });
  }
}
