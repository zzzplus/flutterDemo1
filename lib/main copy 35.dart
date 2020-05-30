import 'package:flutter/material.dart';
import 'pages/Tabs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}
