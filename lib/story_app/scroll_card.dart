import 'package:flutter/material.dart';
import 'dart:math';

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

List<String> images = [
  "assets/images/image_01.png",
  "assets/images/image_02.jpg",
  "assets/images/image_03.jpg",
  "assets/images/image_04.jpg",
];
List<String> title = [
  "Hounted Ground",
  "Fallen In Love",
  "The Dreaming Moon",
  "Jack the Persian and the Black Castel",
];

class ScrollCardWidget extends StatelessWidget {
  final currentPage;
  final padding = 20.0;
  final verticalInset = 20.0;

  ScrollCardWidget(this.currentPage);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = List();

        for (var i = 0; i < images.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;
          var start = padding +
              max(
                primaryCardLeft -
                    horizontalInset * -delta * (isOnRight ? 15 : 1),
                0.0,
              );
          var cardItem = Positioned.directional(
            top: padding + verticalInset * (max(-delta, 0.0)),
            bottom: padding + verticalInset * (max(-delta, 0.0)),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3.0, 6.0),
                    blurRadius: 20.0,
                  ),
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Image.asset(images[i], fit: BoxFit.cover),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                              child: Text(
                                title[i],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontFamily: "SF-Pro-Text-Regular"),
                              ),
                            ),
                            SizedBox(height: 15.0),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 12.0, bottom: 12.0),
                              child: RaisedButton(
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                color: Colors.blueAccent,
                                child: Text(
                                  "Read Later",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed: () {
                                  print("read later");
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
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(children: cardList);
      }),
    );
  }
}

//class ScrollCardWidget extends StatefulWidget {
//  final int currentPage;
//  ScrollCardWidget({
//    Key key,
//    @required this.currentPage,
//  });
//
//  _ScrollCardWidgetState createState() {
//    return _ScrollCardWidgetState();
//  }
//}
//
//class _ScrollCardWidgetState extends State<ScrollCardWidget> {
//  var _currentPage;
//  var padding = 20.0;
//  var verticalInset = 20.0;
//
//  @override
//  void initState() {
//    super.initState();
//    setState(() {
//      _currentPage = widget.currentPage;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return AspectRatio(
//      aspectRatio: widgetAspectRatio,
//      child: LayoutBuilder(builder: (context, constraints) {
//        var width = constraints.maxWidth;
//        var height = constraints.maxHeight;
//
//        var safeWidth = width - 2 * padding;
//        var safeHeight = height - 2 * padding;
//
//        var heightOfPrimaryCard = safeHeight;
//        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;
//
//        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
//        var horizontalInset = primaryCardLeft / 2;
//
//        List<Widget> cardList = List();
//
//        for (var i = 0; i < images.length; i++) {
//          var delta = i - _currentPage;
//          bool isOnRight = delta > 0;
//          var start = padding +
//              max(
//                primaryCardLeft -
//                    horizontalInset * -delta * (isOnRight ? 15 : 1),
//                0.0,
//              );
//          var cardItem = Positioned.directional(
//            top: padding + verticalInset * (max(-delta, 0.0)),
//            bottom: padding + verticalInset * (max(-delta, 0.0)),
//            start: start,
//            textDirection: TextDirection.rtl,
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(16.0),
//              child: Container(
//                decoration: BoxDecoration(color: Colors.white, boxShadow: [
//                  BoxShadow(
//                    color: Colors.black,
//                    offset: Offset(3.0, 6.0),
//                    blurRadius: 10.0,
//                  ),
//                ]),
//                child: AspectRatio(
//                  aspectRatio: cardAspectRatio,
//                  child: Stack(
//                    fit: StackFit.expand,
//                    children: <Widget>[
//                      Image.asset(images[i], fit: BoxFit.cover),
//                      Align(
//                        alignment: Alignment.bottomLeft,
//                        child: Column(
//                          mainAxisSize: MainAxisSize.min,
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: <Widget>[
//                            Padding(
//                              padding: EdgeInsets.symmetric(
//                                horizontal: 16.0,
//                                vertical: 8.0,
//                              ),
//                              child: Text(
//                                title[i],
//                                style: TextStyle(
//                                    color: Colors.white,
//                                    fontSize: 22.0,
//                                    fontFamily: "SF-Pro-Text-Regular"),
//                              ),
//                            ),
//                            SizedBox(height: 15.0),
//                            Padding(
//                              padding:
//                                  EdgeInsets.only(left: 12.0, bottom: 12.0),
//                              child: RaisedButton(
//                                padding: EdgeInsets.symmetric(horizontal: 18.0),
//                                color: Colors.blueAccent,
//                                child: Text(
//                                  "Read Later",
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontSize: 12.0,
//                                  ),
//                                ),
//                                shape: RoundedRectangleBorder(
//                                  borderRadius: BorderRadius.circular(20.0),
//                                ),
//                                onPressed: () {
//                                  print("read later");
//                                },
//                              ),
//                            ),
//                          ],
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ),
//            ),
//          );
//          cardList.add(cardItem);
//        }
//        return Stack(children: cardList);
//      }),
//    );
//  }
//}
