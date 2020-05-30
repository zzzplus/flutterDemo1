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

  List<Widget> _getData() {

    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(
        ListTile(
          title: Text('我是新闻标题'),
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}
