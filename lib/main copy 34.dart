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
        body: HomePage(),
      ),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: list.map((item) {
            return Text(item);
          }).toList(),
        ),
        RaisedButton(
          child: Text('增加按钮'),
          onPressed: () {
            setState(() {
              this.countNum++;
              this.list.add('新增内容${this.countNum}');
            });
          },
        ),
      ],
    );
  }
}
