import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  final String title;
  final String content;

  MyDialog({this.title = '', this.content = ''});

// 定时器
  _showTimer(context) {
    Timer.periodic(
      Duration(milliseconds: 2000),
      (timer) {
        Navigator.pop(context);
        timer.cancel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 200,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text('${this.title}'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Text(
                  '${this.content}',
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
