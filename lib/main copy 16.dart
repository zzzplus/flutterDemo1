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
          body: HomeContent()),
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}

class HomeContent extends StatelessWidget {

  List<Widget> _getListData() {
    var list = listData.map((item) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(item['imageUrl']),
            SizedBox(height: 12),
            Text(
              item['title'],
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16
              ),
            ),
          ],
        ),

        decoration: BoxDecoration(
          border: Border.all(
            color: Color.fromRGBO(233, 233, 233, 0.9),
            width: 1
          )
        )
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.all(20),
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: this._getListData(),
    );
  }
}
