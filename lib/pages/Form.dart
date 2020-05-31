import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  final arguments;
  FormPage({this.arguments, Key key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments['title']),
      ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(
            child: Text('返回'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
