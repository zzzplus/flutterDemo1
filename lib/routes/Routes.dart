import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';

import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/user/User.dart';
import '../pages/Buttons.dart';
import '../pages/TextFile.dart';
import '../pages/FormDemo.dart';
import '../pages/DatePicker.dart';
import '../pages/Swiper.dart';
import '../pages/Dialog.dart';
import '../pages/Http.dart';

final routes = <String, WidgetBuilder>{
  '/': (context) => Tabs(),
  '/form': (context, {arguments}) => FormPage(arguments: arguments),
  '/search': (context) => SearchPage(),
  '/login': (context) => LoginPage(),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
  '/appBarDemo': (context) => AppBarDemoPage(),
  '/tabBarController': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage(),
  '/buttons': (context) => ButtonsPage(),
  '/textFile': (context) => TextFilePage(),
  '/formDemo': (context) => FormDemoPage(),
  '/datePicker': (context) => DatePickerDemo(),
  '/swiper': (context) => SwiperPage(),
  '/dialog': (context) => DialogPage(),
  '/http': (context) => HttpPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
};
