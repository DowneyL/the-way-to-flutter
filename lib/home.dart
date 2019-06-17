import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
//          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
            FlatButton(
              child: Text("story app"),
              onPressed: () {
                Navigator.pushNamed(context, "story_app");
              },
            ),
//            FlatButton(
//              child: Text("notificaiton demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "notification_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("gesture detector demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "gesture_detector_demo");
//              },
//            ),
//            RaisedButton(
//              child: Text("pointer demo"),
//              colorBrightness: Brightness.dark,
//              onPressed: () {
//                Navigator.pushNamed(context, "pointer_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("inherited demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "inherited_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("scroll notification demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "scroll_notification_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("scroll controller demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "scroll_controller_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("custom scroll demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "custom_scroll_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("grid view demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "grid_view_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("infinite list view"),
//              onPressed: () {
//                Navigator.pushNamed(context, "infinite_list_view");
//              },
//            ),
//            FlatButton(
//              child: Text("list view demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "list_view_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("single scroll demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "single_scroll_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("scaffold demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "scaffold_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("container demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "container_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("transform demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "transform_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("decorated box demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "decorated_box_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("constrained box demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "constrained_box_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("padding demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "padding_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("stack pos demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "stack_pos_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("flow demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "flow_demo");
//              },
//            ),
//            FlatButton(
//              onPressed: () {
//                Navigator.pushNamed(context, "wrap_demo");
//              },
//              child: Text("wrap demo"),
//            ),
//            FlatButton(
//              onPressed: () {
//                Navigator.pushNamed(context, "flex_demo");
//              },
//              child: Text("flex demo"),
//            ),
//            FlatButton(
//              child: Text("column row demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "column_row_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("form demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "form_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("text focus demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "text_focus_demo");
//              },
//            ),
//            FlatButton(
//              onPressed: () {
//                Navigator.pushNamed(context, "text_input_demo");
//              },
//              child: Text("text input button"),
//            ),
//            FlatButton(
//              child: Text("switch checkbox demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "switch_checkbox_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("icon demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "icon_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("image demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "image_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("button demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "button_demo");
//              },
//            ),
//            FlatButton(
//              child: Text("text demo"),
//              onPressed: () {
//                Navigator.pushNamed(context, "textdemo");
//              },
//            ),
//            FlatButton(
//              child: Text("about me"),
//              onPressed: () {
//                Navigator.of(context).pushNamed("about", arguments: "heng.li");
////                Navigator.pushNamed(context, "about");
////                Navigator.push(context, new MaterialPageRoute(builder: (context) {
////                  return new About();
////                }));
//              },
//            ),
//            FlatButton(
//              child: Text("counter"),
//              onPressed: () {
//                Navigator.of(context).pushNamed("counter");
//              },
//            ),
//            FlatButton(
//              child: Text("tap box a"),
//              onPressed: () {
//                Navigator.pushNamed(context, "tapboxa");
//              },
//            ),
//            FlatButton(
//              child: Text("tap box b"),
//              onPressed: () {
//                Navigator.pushNamed(context, "tapboxb");
//              },
//            ),
//            FlatButton(
//              child: Text("tap box c"),
//              onPressed: () {
//                Navigator.pushNamed(context, "tapboxc");
//              },
//            ),
//            FlatButton(
//              child: Text("cupertino"),
//              onPressed: () {
//                Navigator.pushNamed(context, "cupertino");
//              },
//            ),
//            RandomWord(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RandomWord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(wordPair.asPascalCase.toString()),
    );
  }
}
