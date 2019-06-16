import 'package:flutter/material.dart';

class ScrollNotificationDemoRoute extends StatefulWidget {
  @override
  _ScrollNotificationDemoRouteState createState() {
    return _ScrollNotificationDemoRouteState();
  }
}

class _ScrollNotificationDemoRouteState extends State<ScrollNotificationDemoRoute> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("scroll notification demo"),
      ),
      body: Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            setState(() {
              _progress = "${(progress * 100).toInt()}%";
            });
            print("BottomEdge: ${notification.metrics.extentAfter == 0}");
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                itemCount: 100,
                itemExtent: 50.0,
                itemBuilder: (context, index) {
                  return ListTile(title: Text("$index"),);
                },
              ),
              CircleAvatar(
                radius: 30.0,
                child: Text(_progress, style: TextStyle(color: Colors.white),),
                backgroundColor: Colors.black45,
              ),
            ],
          ),
        ),
      ),
    );
  }
}