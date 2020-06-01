import 'package:flutter/material.dart';

class TextFilePage extends StatefulWidget {
  TextFilePage({Key key}) : super(key: key);

  @override
  _TextFilePageState createState() => _TextFilePageState();
}

class _TextFilePageState extends State<TextFilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextFormField(),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'placeholder文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: 'label文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: '图标文本框',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: '多行文本框',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码',
                border: OutlineInputBorder(),
                labelText: '密码',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
