import 'package:flutter/material.dart';
import './extension/int_extension.dart';
import './extension/adapte.dart';
import 'core/router/router.dart';
import 'ui/shared/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    JJAdapte.initialize();
    return MaterialApp(
      title: '小厨房',
      debugShowCheckedModeBanner: false,  
      //主题
      theme: JJAppTheme.norTheme,
      //路由
      initialRoute: JJRouter.initialRoute,
      routes: JJRouter.routes,
      onGenerateRoute: JJRouter.generateRoute,
      onUnknownRoute: JJRouter.unknownRoute,
    );
  }
}


