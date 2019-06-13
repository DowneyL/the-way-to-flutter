import 'package:flutter/material.dart';

class TapBoxBParentWidget extends StatefulWidget {
  @override
  _TapBoxBParentWidgetState createState() => new _TapBoxBParentWidgetState();
}

class _TapBoxBParentWidgetState extends State<TapBoxBParentWidget> {
  bool _active = false;

  void _handleTapBoxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("tap box b"),
      ),
      body: Container(
        child: Center(
          child: new TapBoxB(
            onChanged: _handleTapBoxChanged,
            active: _active,
          ),
        ),
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  const TapBoxB({
    Key key,
    this.active: false,
    @required this.onChanged,
  }) : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Center(
            child: Text(
              active ? "Active" : "Inactive",
              style: new TextStyle(color: Colors.white, fontSize: 28.0),
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: new BoxDecoration(
            color: active ? Colors.lightGreen[600] : Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
