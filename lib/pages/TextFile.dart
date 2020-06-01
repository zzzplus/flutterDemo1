import 'package:flutter/material.dart';

class TextFilePage extends StatefulWidget {
  TextFilePage({Key key}) : super(key: key);

  @override
  _TextFilePageState createState() => _TextFilePageState();
}

class _TextFilePageState extends State<TextFilePage> {
  var _username = new TextEditingController();
  var _flag;
  var _sex;
  bool _switch;

  @override
  void initState() {
    super.initState();
    this._username.text = '设定初始值';
    this._flag = false;
    this._sex = 1;
    this._switch = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单页面'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // child: TextFileDemo(),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                controller: this._username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '请输入用户名',
                  labelText: '用户名',
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.maxFinite,
                height: 50,
                child: RaisedButton(
                  child: Text('登录'),
                  color: Colors.blue,
                  onPressed: () {
                    print(this._username.text);
                  },
                ),
              ),

              // Checkbox
              Checkbox(
                value: this._flag,
                onChanged: (value) {
                  setState(() {
                    this._flag = value;
                  });
                },
              ),
              CheckboxListTile(
                value: this._flag,
                title: Text('一级标题'),
                subtitle: Text('二级标题'),
                secondary: Icon(Icons.help),
                selected: this._flag,
                onChanged: (value) {
                  setState(() {
                    this._flag = value;
                  });
                },
              ),
              Divider(),
              SizedBox(height: 40),
              Row(
                children: <Widget>[
                  Text('男：'),
                  Radio(
                    value: 1,
                    groupValue: this._sex,
                    onChanged: (value) {
                      setState(() {
                        this._sex = value;
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  Text('女：'),
                  Radio(
                    value: 2,
                    groupValue: this._sex,
                    onChanged: (value) {
                      setState(() {
                        this._sex = value;
                      });
                    },
                  ),
                ],
              ),
              RadioListTile(
                value: 1,
                groupValue: this._sex,
                title: Text('一级标题'),
                subtitle: Text('二级标题'),
                secondary: Icon(Icons.help),
                selected: this._sex == 1,
                onChanged: (value) {
                  setState(() {
                    this._sex = value;
                  });
                },
              ),
              RadioListTile(
                value: 2,
                groupValue: this._sex,
                title: Text('一级标题'),
                subtitle: Text('二级标题'),
                secondary: Image.network(
                  'https://www.itying.com/images/flutter/2.png',
                ),
                selected: this._sex == 2,
                onChanged: (value) {
                  setState(() {
                    this._sex = value;
                  });
                },
              ),
              Switch(
                value: this._switch,
                onChanged: (value) {
                  setState(() {
                    this._switch = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFileDemo extends StatelessWidget {
  const TextFileDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: 'placeholder文本框',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            labelText: '用户名',
            hintText: 'label文本框',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: '图标文本框',
          ),
        ),
        SizedBox(height: 20),
        TextField(
          maxLines: 4,
          decoration: InputDecoration(
            hintText: '多行文本框',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: '请输入密码',
            border: OutlineInputBorder(),
            labelText: '密码',
          ),
        ),
      ],
    );
  }
}
