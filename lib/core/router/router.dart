import 'package:flutter/material.dart';
import '../../ui/pages/main/main.dart';

class JJRouter {
  static final String initialRoute = JJMainScreen.routeName;

  static final Map<String, WidgetBuilder> routes = {
   JJMainScreen.routeName: (ctx) => JJMainScreen()
  };


  static final RouteFactory generateRoute = (settings) {
    // if (settings.name == HYDetailPage.routeName) {
    //   return MaterialPageRoute(
    //       builder: (ctx) {
    //         return HYDetailPage(settings.arguments);
    //       }
    //   );
    // }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
    
  };
}