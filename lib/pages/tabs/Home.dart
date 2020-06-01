import 'package:flutter/material.dart';

// import '../Search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('跳转到搜索页面'),
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => SearchPage(),
              // ));
              Navigator.pushNamed(context, '/search');
            },
          ),
          RaisedButton(
            child: Text('跳转到AppBarDemo'),
            onPressed: () {
              Navigator.pushNamed(context, '/appBarDemo');
            },
          ),
          RaisedButton(
            child: Text('跳转到 tabBarController'),
            onPressed: () {
              Navigator.pushNamed(context, '/tabBarController');
            },
          ),
          RaisedButton(
            child: Text('跳转到 Buttons'),
            onPressed: () {
              Navigator.pushNamed(context, '/buttons');
            },
          ),
          RaisedButton(
            child: Text('学生信息登记系统页面'),
            onPressed: () {
              Navigator.pushNamed(context, '/formDemo');
            },
          ),
        ],
      ),
    );
  }
}
