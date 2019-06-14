import 'package:flutter/material.dart';

class FormDemoRoute extends StatefulWidget {
  @override
  _FormDemoRouteState createState() => _FormDemoRouteState();
}

class _FormDemoRouteState extends State<FormDemoRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _pwdController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("form demo")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                  labelText: "Username: ",
                  hintText: "Username or E-mail Address.",
                  icon: Icon(Icons.person),
                ),
                validator: (v) {
                  return (v.trim().length > 0) ? null : "Username does not exists!";
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                  labelText: "Password: ",
                  hintText: "Your password for the account.",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (v) {
                  return (v.trim().length > 5) ? null : "Password is least require 6 words";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Sign in"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if((_formKey.currentState as FormState).validate()) {
                            print("success");
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}