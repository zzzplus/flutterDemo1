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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
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

                    // !!! key一定要带’
                    Navigator.pushNamed(context, '/form',
                        arguments: {'title': '传递参数aaaaaa'});
                  },
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('2222222我是标题'),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
