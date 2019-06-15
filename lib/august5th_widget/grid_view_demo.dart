import 'package:flutter/material.dart';

class GridViewDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view demo"),
      ),
//      body: GridView(
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 3,
//          childAspectRatio: 1.0,
//        ),
//        children: <Widget>[
//          FlatButton(
//            child: Icon(Icons.ac_unit, color: Colors.white,),
//            onPressed: () {},
//            color: Colors.blue,
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit, color: Colors.white,),
//            onPressed: () {},
//            color: Colors.blue,
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit),
//            onPressed: () {},
//          ),
//          FlatButton(
//            child: Icon(Icons.ac_unit, color: Colors.white,),
//            onPressed: () {},
//            color: Colors.blue,
//          ),
//        ],
//      ),
      body: GridView(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 80.0,
          childAspectRatio: 1.0,
        ),
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      ),
    );
  }
}