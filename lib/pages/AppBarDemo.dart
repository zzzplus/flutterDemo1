import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key key}) : super(key: key);

  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBarDemoPage'),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('settings');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('你好 flutter！！！'),
      ),
    );
  }
}
