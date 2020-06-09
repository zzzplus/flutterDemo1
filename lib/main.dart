import 'package:flutter/material.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';

import 'routes/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/swiper',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primaryColor: Colors.lightBlue),

      //配置如下两个国际化的参数
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate
      // ],
      // supportedLocales: [
      //   const Locale("zh", "CH"),
      //   const Locale("en", "US"),
      // ],
    );
  }
}
