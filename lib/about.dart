import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args=ModalRoute.of(context).settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text("about"),
      ),
      body: Echo(text: "Hello world", bgColor: Colors.red,)
    );
  }
}

class Echo extends StatelessWidget {
  final String text;
  final Color bgColor;
  const Echo({Key key, @required this.text, this.bgColor:Colors.grey}) : super(key:key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: bgColor,
        child: Text(text),
      ),
    );
  }
}