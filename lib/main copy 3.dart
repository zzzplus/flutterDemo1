import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: HomeContent()
      ),
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          '我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本我是一个文本测试',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 2,

          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0
          )
        ),
        height: 300.0,
        width: 300.0,
        // padding: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(10, 30, 5, 20),
        alignment: Alignment.topLeft,

        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10)
          )
        ),
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(0.3),
        // transform: Matrix4.diagonal3Values(1.2, 1, 1),
      )
    );
  }
}
