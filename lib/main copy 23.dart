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
        body: HomeContent(),
      ),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 200.0,
                color: Colors.black,
                child: Text('你好Flutter'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                    'https://www.itying.com/images/flutter/2.png',
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.network(
                          'https://www.itying.com/images/flutter/3.png',
                          fit: BoxFit.cover),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 85,
                      child: Image.network(
                          'https://www.itying.com/images/flutter/4.png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
