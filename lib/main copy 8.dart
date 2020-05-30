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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings, color: Colors.yellow, size: 40),
          title: Text(
            '新闻标题',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('二级标题'),
        ),
        ListTile(
          title: Text(
            '新闻标题',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('二级标题'),
          trailing: Icon(Icons.home, color: Colors.blue, size: 40),
        ),
        ListTile(
          leading: Image.asset(
            'images/a.jpeg',
            fit: BoxFit.cover,
            width: 50,
            height: 50,
            alignment: Alignment.center,
          ),
          title: Text(
            '新闻标题',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          subtitle: Text('二级标题'),
        ),
      ],
    );
  }
}
