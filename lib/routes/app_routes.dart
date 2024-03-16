import 'package:flutter/material.dart';
import '../presentation/one_screen/one_screen.dart';
import '../presentation/two_container_screen/two_container_screen.dart';
import '../presentation/three_screen/three_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String oneScreen = '/one_screen';

  static const String twoContainerScreen = '/two_container_screen';

  static const String twoPage = '/two_page';

  static const String threeScreen = '/three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    oneScreen: (context) => OneScreen(),
    twoContainerScreen: (context) => TwoContainerScreen(),
    threeScreen: (context) => ThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
