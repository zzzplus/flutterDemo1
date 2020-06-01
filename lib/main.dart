import 'package:flutter/material.dart';

import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/textFile',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}
