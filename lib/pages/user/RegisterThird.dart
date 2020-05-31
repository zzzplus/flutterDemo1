import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

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
          Text('第三步：密码'),
          RaisedButton(
            child: Text('完成'),
            onPressed: () {
              // Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                new MaterialPageRoute(builder: (context) => new Tabs(index: 1)),
                (route) => route == null,
              );
            },
          )
        ],
      ),
    );
  }
}
