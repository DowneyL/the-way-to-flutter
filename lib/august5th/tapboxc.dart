import 'package:flutter/material.dart';

class CParentWidget extends StatefulWidget {
  @override
  _CParentWidgetState createState() => new _CParentWidgetState();
}

class _CParentWidgetState extends State<CParentWidget> {
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
        title: Text("tap box c"),
      ),
      body: Container(
        child: Center(
          child: new TapBoxC(onChanged: _handleTapBoxChanged, active: _active),
        ),
      ),
    );
  }
}

class TapBoxC extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  const TapBoxC({
    Key key,
    this.active: false,
    @required this.onChanged,
  }) : super(key: key);

  @override
  _TapBoxCState createState() => new _TapBoxCState();
}

class _TapBoxCState extends State<TapBoxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            widget.active ? "Active" : "Inactive",
            style: new TextStyle(color: Colors.white, fontSize: 22.0),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: widget.active ? Colors.lightGreen[600] : Colors.grey[300],
          border: _highlight
              ? new Border.all(
                color: Colors.teal[700],
                width: 10.0,
              )
              : null,
        ),
      ),
    );
  }


}
