import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("image demo")),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 400.0,
                height: 500.0,
                child: Image.asset("assets/images/mobu.jpeg",
                  width: 50.0,
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                  repeat: ImageRepeat.repeatY,
                ),
              ),
//              Image(
//                image: AssetImage("assets/images/mobu.jpeg"),
//                width: 100.0,
//              ),
//              Image.asset("assets/images/mobu.jpeg", width: 100.0),
//              Image(
//                image: NetworkImage("https://avatars1.githubusercontent.com/u/24536783?s=460&v=4"),
//                width: 100.0,
//              ),
//              Image.network("https://avatars1.githubusercontent.com/u/24536783?s=460&v=4",
//                width: 100.0,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 100.0,
//                fit: BoxFit.contain,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 100.0,
//                fit: BoxFit.fill,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 100.0,
//                fit: BoxFit.cover,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 100.0,
//                fit: BoxFit.fitWidth,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 100.0,
//                fit: BoxFit.fitHeight,
//              ),
//              Image.asset("assets/images/desktop.jpg",
//                width: 200.0,
//                fit: BoxFit.none,
//              ),
            ],
          ),
        ),
      ),
    );
  }
}