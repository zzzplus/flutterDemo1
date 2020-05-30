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
          body: HomeContent()),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = new List();

  HomeContent() {
    for (var i = 0; i < 20; i++) {
      this.list.add(
        '我是第$i条'
        // ListTile(
        //   title: Text('我是第$i条'),
        // )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.list.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(this.list[index])
        );
      },
    );
  }
}
