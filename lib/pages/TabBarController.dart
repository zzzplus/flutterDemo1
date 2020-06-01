import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  final List list = <int>[
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(
      length: list.length, // 与 TabBar 长度一致
      vsync: this, // 固定
    );

    _tabController.addListener(() {
      // 滚动和点击都会打印
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBarController Demo'),
        bottom: TabBar(
          controller: _tabController, // 注意
          isScrollable: true, // 多个的时候
          tabs: this.list.map((item) {
            return Tab(
              text: '菜单$item',
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController, // 注意
        children: this.list.map((item) {
          return Center(
            child: Text('男装产品$item'),
          );
        }).toList(),
      ),
    );
  }
}
