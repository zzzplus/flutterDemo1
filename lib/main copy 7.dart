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
    return Center(
      child: Container(
        child: Image.asset(
          'images/a.jpeg',
          fit: BoxFit.cover,
        ),
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            width: 10.0,
            color: Colors.green
          )
        ),
      )
    );
  }
}
