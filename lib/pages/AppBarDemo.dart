import 'package:flutter/material.dart';

class AppBarDemoPage extends StatefulWidget {
  AppBarDemoPage({Key key}) : super(key: key);

  @override
  _AppBarDemoPageState createState() => _AppBarDemoPageState();
}

class _AppBarDemoPageState extends State<AppBarDemoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBarDemoPage'),
          backgroundColor: Colors.red,
          bottom: TabBar(
            indicatorColor: Colors.black54,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(
                text: 'tab1',
              ),
              Tab(
                text: 'tab2',
              )
            ],
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('settings');
              },
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一个tab内容'),
                ),
                ListTile(
                  title: Text('第一个tab内容'),
                ),
                ListTile(
                  title: Text('第一个tab内容'),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第二个tab内容'),
                ),
                ListTile(
                  title: Text('第二个tab内容'),
                ),
                ListTile(
                  title: Text('第二个tab内容'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
