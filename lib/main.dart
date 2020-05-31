import 'package:flutter/material.dart';

import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  final routes = {
    '/form': (context, {arguments}) => FormPage(arguments: arguments),
    '/search': (context) => SearchPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function PageContentBuilder = this.routes[name];

        if (PageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  PageContentBuilder(context, arguments: settings.arguments),
            );
            return route;
          } else {
            final Route route = MaterialPageRoute(
              builder: (context) => PageContentBuilder(context),
            );
            return route;
          }
        }
      },
      theme: ThemeData(primaryColor: Colors.lightBlue),
    );
  }
}
