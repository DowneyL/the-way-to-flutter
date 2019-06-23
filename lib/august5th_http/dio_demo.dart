import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

void getHttp() async {
  Dio dio = Dio();
  try {
    Response response = await dio.get(
        "http://v.juhe.cn/joke/content/list.php?sort=desc&page=1&pagesize=10&time=1561273184&key=0215296c4b47d14f97983d33a4ada8c4");
    print(response.data.toString());
  } catch (e) {
    print(e);
  }
}

class DioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getHttp();
    return Scaffold(
      appBar: AppBar(
        title: Text("dio demo"),
      ),
      body: Center(),
    );
  }
}
