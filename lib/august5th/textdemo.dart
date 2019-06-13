import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text demo"),
      ),
      body: Container(
//        child: Text("Hello world",
//          textAlign: TextAlign.center,
//        ),

//        child: Text("Hello world! I'm Jacky!" * 6,
//          maxLines: 1,
//          overflow: TextOverflow.ellipsis,
//        ),

//        child: Text("Hello world",
//          textScaleFactor: 1.5,
//        ),

//        child: Text("Hello world" * 6,
//          textAlign: TextAlign.center,
//        ),

//      child: Text("Hello world",
//        textAlign: TextAlign.center,
//        style: TextStyle(
//          color: Colors.blue, fontSize: 16.0,
//          height: 1.2,
//          fontFamily: "Courier",
//          background: new Paint()..color = Colors.yellow,
//          decoration: TextDecoration.underline,
//          decorationStyle: TextDecorationStyle.dashed,
//        ),
//      ),
        child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: "Home: "
              ),
              TextSpan(
                text: "https://flutterchina.club",
                style: TextStyle(
                  color: Colors.blueAccent
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}