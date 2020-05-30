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

  List<Widget> _getListData() {
    List<Widget> list = new List();

    for (var i = 0; i < 20; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text(
            '这是第$i条数据',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white
            )
          ),
          color: Colors.blue,
        ),
      );
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),

      childAspectRatio: 0.7, // child widget 宽高比例

      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: this._getListData(),
    );
  }
}
