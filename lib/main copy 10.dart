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
          body: HomeContent()),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.red
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.green,
            child: ListView(
              children: <Widget>[
                Image.asset(
                  'images/a.jpeg',
                ),
                Text('你好哇！哈哈哈哈哈哈'),
              ],
            ),
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.blue
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.deepOrange
          ),
          Container(
            width: 180.0,
            height: 180.0,
            color: Colors.yellow
          ),
        ],
      ),
    );
  }
}
