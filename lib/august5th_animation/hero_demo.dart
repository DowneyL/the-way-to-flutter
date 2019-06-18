import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hero animation"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
            tag: "avatar",
            child: ClipOval(
              child: Image.asset(
                "assets/images/mobu.jpeg",
                width: 50.0,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return FadeTransition(
                opacity: animation,
                child: Scaffold(
                  appBar: AppBar(
                    title: Text("view"),
                  ),
                  body: HeroAnimationRouteB(),
                ),
              );
            }));
          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar",
        child: Image.asset("assets/images/mobu.jpeg"),
      ),
    );
  }
}
