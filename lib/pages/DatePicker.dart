import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _nowDate = DateTime.now();
  var _nowTime = TimeOfDay(hour: 10, minute: 30);

  @override
  void initState() {
    super.initState();

    // var now = DateTime.now();
    // print(now); // 2020-06-01 16:40:27.119494
    // print(now.millisecondsSinceEpoch); // 1591000902748
    // print(DateTime.fromMillisecondsSinceEpoch(
    //     1591000902748)); // 2020-06-01 16:41:42.74
  }

  _showDatePicker() async {
    var result = await showDatePicker(
      context: context,
      initialDate: _nowDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2021),
      // locale: Locale('zh'),
    );

    setState(() {
      _nowDate = result;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(context: context, initialTime: _nowTime);

    setState(() {
      _nowTime = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                  child: Row(
                    children: <Widget>[
                      Text('${formatDate(_nowDate, [yyyy, '年', mm, '月', dd])}'),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  onTap: _showDatePicker),
              InkWell(
                child: Row(
                  children: <Widget>[
                    Text('${_nowTime.format(context)}'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showTimePicker,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
