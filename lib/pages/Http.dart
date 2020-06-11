import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:dio/dio.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  List _list = [];

  @override
  void initState() {
    super.initState();

    this._getData();
  }

  _getData() async {
    var apiUrl =
        'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1';
    Response response = await Dio().get(apiUrl);

    setState(() {
      this._list = json.decode(response.data)['result'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http demo'),
      ),
      body: Container(
        child: this._list.length > 0
            ? ListView.builder(
                itemCount: this._list.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(this._list[index]['title']),
                  );
                },
              )
            : Text('加载数据中...'),
      ),
    );
  }
}
