import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  ButtonsPage({Key key}) : super(key: key);

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('阴影按钮'),
                elevation: 20,
                onPressed: () {},
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text('颜色按钮'),
                color: Colors.blue[300],
                onPressed: () {},
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                onPressed: () {
                  print('图标按钮');
                },
                icon: Icon(Icons.search),
                label: Text('图标按钮'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 100,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text('自适应宽度按钮'),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  child: Text('宽高按钮'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
              ),
              SizedBox(width: 10),
              Container(
                height: 100,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  splashColor: Colors.yellow[300],
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(width: 10),
              FlatButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('扁平按钮'),
              ),
              SizedBox(width: 10),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('线框按钮 / 注册按钮'),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.blue,
                    onPressed: () {},
                  ),
                  OutlineButton(
                    child: Text('注册'),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              CustomButton(
                text: '自定义按钮',
                width: 100,
                height: 40,
                pressed: () {
                  print('自定义按钮');
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}

// 自定义按钮
class CustomButton extends StatelessWidget {
  final pressed;
  final String text;
  final double width;
  final double height;

  const CustomButton({
    Key key,
    this.pressed = null,
    this.text = '',
    this.width = 80,
    this.height = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
