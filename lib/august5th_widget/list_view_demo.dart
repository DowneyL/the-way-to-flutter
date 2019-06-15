import 'package:flutter/material.dart';

class ListViewDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget blueDivider = Divider(color: Colors.blue,);
    Widget greenDivider = Divider(color: Colors.green,);
    return Scaffold(
      appBar: AppBar(
        title: Text("list view demo"),
      ),
//      body: ListView.builder(
//        itemCount: 100,
//        itemExtent: 50.0,
//        itemBuilder: (BuildContext context, int index) {
//          return ListTile(title: Text("$index"));
//        },
//      ),
      body: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        },
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? blueDivider : greenDivider;
        },
      ),
    );
  }
}