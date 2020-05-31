import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    // !!! 传入Center报错了
    return Column(
      children: <Widget>[
        Text('我是设置页面'),
        RaisedButton(
          child: Text('登录按钮'),
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('注册按钮'),
          onPressed: () {
            Navigator.pushNamed(context, '/registerFirst');
          },
        ),
      ],
    );
  }
}
