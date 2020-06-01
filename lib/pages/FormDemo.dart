import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  FormDemoPage({Key key}) : super(key: key);

  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String username;
  int sex = 1;

  void _sexChanged(value) {
    setState(() {
      this.sex = value;
    });
  }

  List hobby = [
    {
      'checked': true,
      'label': '吃饭',
    },
    {
      'checked': false,
      'label': '睡觉',
    },
    {
      'checked': false,
      'label': '打豆豆',
    },
  ];
  List<Widget> _getHobby() {
    List list = this.hobby.map((item) {
      return Row(children: <Widget>[
        Text(item['label']),
        Checkbox(
          value: item['checked'],
          onChanged: (value) {
            setState(() {
              item['checked'] = value;
            });
          },
        ),
      ]);
    }).toList();

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学员信息登记系统'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '请输入用户名',
              ),
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Text('男：'),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: this._sexChanged,
                ),
                Text('女：'),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: this._sexChanged,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: _getHobby(),
            ),
            SizedBox(height: 40),
            Container(
              width: double.maxFinite,
              height: 40,
              child: RaisedButton(
                child: Text('确定'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(this.username);
                  print(this.sex);
                  print(this.hobby);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
