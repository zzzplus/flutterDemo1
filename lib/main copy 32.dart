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
  List<int> list = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 400,
      color: Colors.pink,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        runAlignment: WrapAlignment.center,
        children: list.map((item) {
          return MyButton('第$item季');
        }).toList(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text(this.text),
        color: Theme.of(context).accentColor,
        onPressed: () {});
  }
}
