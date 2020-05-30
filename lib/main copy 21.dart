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
        body: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: IconContainer(Icons.search, color: Colors.blue)),
            Expanded(
                flex: 2,
                child: IconContainer(Icons.home, color: Colors.orange)),
            Expanded(
                flex: 1,
                child: IconContainer(Icons.select_all, color: Colors.red))
          ],
        ),
      ),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class IconContainer extends StatelessWidget {
  IconData icon;
  double size = 32.0;
  Color color = Colors.red;
  IconContainer(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child:
          Center(child: Icon(this.icon, size: this.size, color: Colors.white)),
    );
  }
}
