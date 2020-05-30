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
  Widget _getData(BuildContext context, int index) {
    return Container(
      height: 220,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image.network(
                listData[index]['imageUrl'],
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 200,
              ),
              Align(
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(10),
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                      alignment: Alignment.center,
                      child: Text(listData[index]['title'],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )))),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}
