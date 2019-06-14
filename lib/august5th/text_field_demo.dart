import 'package:flutter/material.dart';

TextEditingController _unameController = new TextEditingController();
TextEditingController _pwdController = new TextEditingController();

class TextFieldDemoWidget extends StatefulWidget {
  @override
  _TextFieldDemoWidgetState createState() => new _TextFieldDemoWidgetState();
}

class _TextFieldDemoWidgetState extends State<TextFieldDemoWidget> {
  @override
  Widget build(BuildContext context) {
//    _unameController.text = "my_name";
//    _unameController.selection = TextSelection(
//      baseOffset: 2,
//      extentOffset: _unameController.text.length,
//    );
    return Scaffold(
      appBar: AppBar(title: Text("textfield and input demo")),
      body: Container(
        child: Theme(
          data: Theme.of(context).copyWith(
            hintColor: Colors.grey[200],
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.grey),
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                child: TextField(
                  controller: _unameController,
                  autofocus: true,
                  decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名和邮箱",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[200], width: 1.0),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  controller: _pwdController,
                  decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登陆密码",
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                  obscureText: true,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey[200], width: 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}