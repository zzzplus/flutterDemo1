import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'components/MyDialog.dart';

class DialogPage extends StatefulWidget {
  DialogPage({Key key}) : super(key: key);

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('温馨提示！'),
          content: Text('确定要关闭吗？'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                print('取消');
                Navigator.pop(context, 'cancel');
              },
              child: Text('取消'),
            ),
            FlatButton(
              onPressed: () {
                print('确定');
                Navigator.pop(context, 'ok');
              },
              child: Text('确定'),
            ),
          ],
        );
      },
    );
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('simple 标题'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('选项 1'),
              onPressed: () {
                print('选项 1');
                Navigator.pop(context, 'a');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('选项 2'),
              onPressed: () {
                print('选项 2');
                Navigator.pop(context, 'b');
              },
            ),
            Divider(),
            SimpleDialogOption(
              child: Text('选项 3'),
              onPressed: () {
                print('选项 3');
                Navigator.pop(context, 'c');
              },
            ),
          ],
        );
      },
    );
    print(result);
  }

  _modalBottomSheet() async {
    var result = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('分享1'),
                onTap: () {
                  Navigator.pop(context, '分享1');
                },
              ),
              Divider(),
              ListTile(
                title: Text('分享2'),
                onTap: () {
                  Navigator.pop(context, '分享2');
                },
              ),
              Divider(),
              ListTile(
                title: Text('分享3'),
                onTap: () {
                  Navigator.pop(context, '分享3');
                },
              ),
            ],
          ),
        );
      },
    );
    print(result);
  }

  _toast() async {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  _showCustomDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return MyDialog(
          title: '关于我们',
          content: '内容是什么',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog demo'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('alert dialog按钮'),
                onPressed: _alertDialog,
              ),
              RaisedButton(
                child: Text('simple options dialog'),
                onPressed: _simpleDialog,
              ),
              RaisedButton(
                child: Text('show modal bottom sheet'),
                onPressed: _modalBottomSheet,
              ),
              RaisedButton(
                child: Text('toast'),
                onPressed: _toast,
              ),
              RaisedButton(
                child: Text('自定义Dialog'),
                onPressed: _showCustomDialog,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
