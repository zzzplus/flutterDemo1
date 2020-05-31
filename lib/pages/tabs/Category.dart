import 'package:flutter/material.dart';

// import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('我是标题'),
        ),
        ListTile(
          title: Text('我是标题'),
        ),
        ListTile(
          title: Text('我是标题'),
        ),
        ListTile(
          title: Text('我是标题'),
        ),
        RaisedButton(
          child: Text('跳转到表单页面'),
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => FormPage(title: '传递的参数'),
            //   ),
            // );

            // 对象一定要带’
            Navigator.pushNamed(context, '/form', arguments: {'title': '传递参数aaaaaa'});
          },
        ),
      ],
    );
  }
}
