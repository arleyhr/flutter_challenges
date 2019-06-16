import 'package:flutter/material.dart';
import 'package:flutter_challenges/home.dart';
import 'package:flutter_challenges/apps/app_for_collectors/main.dart';

enum routeKeys {
  HOME,
  APP_FOR_COLLECTORS
}

String getRouteName (routeKeys key) {
  switch (key) {
    case routeKeys.HOME:
      return '/';
    case routeKeys.APP_FOR_COLLECTORS:
      return '/app_for_collectors';
    default:
      return '/';
  }
}

Route generateRoute (RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return buildRoute(settings, MyHomePage());
      break;
    case '/app_for_collectors':
      return buildRoute(settings, AppForCollectors());
      break;
    default:
      return buildRoute(settings, MyHomePage());
  }
}

buildRoute(RouteSettings setting, Widget page) {
  return MaterialPageRoute(
    settings: setting,
    builder: (BuildContext context) => page
  );
}
