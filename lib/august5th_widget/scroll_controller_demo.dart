import 'package:flutter/material.dart';

class ScrollControllerDemoRoute extends StatefulWidget {
  @override
  _ScrollControllerDemoRouteState createState() {
    return _ScrollControllerDemoRouteState();
  }
}

class _ScrollControllerDemoRouteState extends State<ScrollControllerDemoRoute> {
  ScrollController _controller = ScrollController();
  bool showToTopBtn = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
//      print(_controller.offset);
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("scroll controller")),
      body: Scrollbar(
        child: ListView.builder(
          itemCount: 100,
          itemExtent: 50.0,
          controller: _controller,
          itemBuilder: (context, index) {
            return ListTile(title: Text("$index"),);
          },
        ),
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
        child: Icon(Icons.arrow_upward),
        onPressed: () {
          _controller.animateTo(.0,
            duration: Duration(milliseconds: 200),
            curve: Curves.ease
          );
        },
      ),
    );
  }
}