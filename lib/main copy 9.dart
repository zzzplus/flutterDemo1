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
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Image.network('https://www.itying.com/images/flutter/1.png'),
        Image.network('https://www.itying.com/images/flutter/2.png'),
        Image.network('https://www.itying.com/images/flutter/3.png'),
        Image.network('https://www.itying.com/images/flutter/4.png'),
        Image.network('https://www.itying.com/images/flutter/5.png'),
      ],
    );
  }
}
