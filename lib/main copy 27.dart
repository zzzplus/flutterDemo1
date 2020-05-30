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
        child: Container(
      width: 300,
      height: 400,
      color: Colors.red,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 10,
            child: Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 150,
            bottom: 150,
            child: Icon(
              Icons.search,
              size: 40,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Icon(
              Icons.settings,
              size: 60,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    ));
  }
}
