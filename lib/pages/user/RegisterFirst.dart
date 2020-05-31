import 'package:flutter/material.dart';

class RegisterFirstPage extends StatelessWidget {
  const RegisterFirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手机注册'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text('第一步：手机号码'),
          RaisedButton(
            child: Text('下一步'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/registerSecond');
            },
          )
        ],
      ),
    );
  }
}
