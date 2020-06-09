import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  final List<Map> imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('swiper'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.maxFinite,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    imgList[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: imgList.length,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Text('我是轮播图'),
            ],
          ),
        ],
      ),
    );
  }
}
