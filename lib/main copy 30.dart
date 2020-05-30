import 'package:flutter/material.dart';
import 'res/listData.dart';

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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 20)),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text(
                  '电话：12345678901',
                ),
              ),
              ListTile(
                title: Text(
                  '地址：到了当机立断经历多了',
                ),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 20)),
                subtitle: Text('高级软件工程师'),
              ),
              ListTile(
                title: Text(
                  '电话：12345678901',
                ),
              ),
              ListTile(
                title: Text(
                  '地址：到了当机立断经历多了',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
