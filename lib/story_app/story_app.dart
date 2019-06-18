import 'package:flutter/material.dart';
import 'custom_icons.dart';
import 'scroll_card.dart';

class StoryApp extends StatefulWidget {
  @override
  _StoryAppState createState() {
    return new _StoryAppState();
  }
}

class _StoryAppState extends State<StoryApp> {
  var currentPage = images.length - 1.0;
  var currentPage2 = images.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: images.length - 1);
    PageController controller2 = PageController(initialPage: images.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    controller2.addListener(() {
      setState(() {
        currentPage2 = controller2.page;
      });
    });

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF1b1e44), Color(0xFF2d3447)],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          tileMode: TileMode.clamp,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(CustomIcons.menu,
                          color: Colors.white, size: 30.0),
                      onPressed: () {
                        print("tap the menu icon");
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white, size: 30.0),
                      onPressed: () {
                        print("tap search icon");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Trending",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: .8,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        CustomIcons.option,
                        color: Colors.white,
                        size: 10.0,
                      ),
                      onPressed: () {
                        print("tap option icon");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffff6e6e),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.0,
                            vertical: 6.0,
                          ),
                          child: Text(
                            "Animated",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: .5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      "25+ Stories",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12.0,
                        letterSpacing: .5,
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  ScrollCardWidget(currentPage),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20.0, .0, 20.0, 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Favorite",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.0,
                        fontFamily: "Calibre-Semibold",
                        letterSpacing: .8,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        CustomIcons.option,
                        color: Colors.white,
                        size: 10.0,
                      ),
                      onPressed: () {
                        print("tap option icon");
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffff6e55),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 22.0,
                            vertical: 6.0,
                          ),
                          child: Text(
                            "Latest",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: .5),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      "9+ Stories",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 12.0,
                        letterSpacing: .5,
                      ),
                    )
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  ScrollCardWidget(currentPage2),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: images.length,
                      controller: controller2,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
