import 'package:flutter/cupertino.dart';

class CupertinoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("cupertino page"),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text("press"),
          onPressed: () {},
          color: CupertinoColors.activeGreen,
        ),
      ),
    );
  }
}