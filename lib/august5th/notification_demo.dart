import 'package:flutter/material.dart';

class MyNotification extends Notification {
  final String msg;
  MyNotification(this.msg);
}

class NotificationRoute extends StatefulWidget {
  @override
  _NotificationRouteState createState() {
    return new _NotificationRouteState();
  }
}

class _NotificationRouteState extends State<NotificationRoute> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my notification demo"),
      ),
      body: NotificationListener<MyNotification>(
        onNotification: (notification) {
          setState(() {
            _msg += notification.msg + " ";
          });
        },
        child: Center(
          child: Column(
            children: <Widget>[
//              RaisedButton(
//                child: Text("Send Notification"),
//                onPressed: () => MyNotification("Hi").dispatch(context),
//              ),
              Builder(
                builder: (context) {
                  return RaisedButton(
                    onPressed: () => MyNotification("hi").dispatch(context),
                    child: Text("Send Notification"),
                  );
                },
              ),
              Text(_msg)
            ],
          ),
        ),
      ),
    );
  }
}
