import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: HomeContent()
      ),
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.network(
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1590581466790&di=57392559ea5e0562c2975d26d37b145c&imgtype=0&src=http%3A%2F%2F1832.img.pp.sohu.com.cn%2Fimages%2Fblog%2F2009%2F2%2F24%2F22%2F0%2F12052df184dg213.jpg',
          // alignment: Alignment.topLeft,

          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,

          // fit: BoxFit.cover,
          repeat: ImageRepeat.repeat,
        ),
        width: 300.0,
        height: 800.0,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      )
    );
  }
}
