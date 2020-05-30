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
        body: LayoutDemo(),
      ),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            width: 300,
            height: 400,
            color: Colors.red,
          ),
          Text(
            '我是一个文本',
            style: TextStyle(fontSize: 40, color: Colors.white),
          )
        ],
      ),
    );
  }
}
