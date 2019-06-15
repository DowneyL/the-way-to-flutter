import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
        generateWordPairs().take(20).map((e) => e.asPascalCase).toList(),
      );
      setState(() {

      });
    });
  }

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("infinite list view"),
      ),

      body: Column(
        children: <Widget>[
          ListTile(title: Text("Words List"),),
          Expanded(
            child: ListView.separated(
              itemCount: _words.length,
              itemBuilder: (context, index) {
                if (_words[index] == loadingTag) {
                  if (_words.length - 1 < 100) {
                    _retrieveData();
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: CircularProgressIndicator(strokeWidth: 2.0),
                      ),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Text("no more.", style: TextStyle(color: Colors.grey)),
                    );
                  }
                }
                int i = index + 1;
                return ListTile(title: Text("$i - " + _words[index]));
              },
              separatorBuilder: (context, index) => Divider(height: .0),
            ),
          ),
        ],
      ),
    );
  }
}