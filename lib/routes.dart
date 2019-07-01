import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/game_detail.dart';
import 'package:flutter_challenges/home.dart';
import 'package:flutter_challenges/apps/app_for_collectors/main.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/console_detail.dart';

// Route contansts
const String rootView = '/';

const String appForCollectorsView = '/app_for_collectors';
const String appForCollectorsConsole = '/app_for_collectors/console';
const String appForCollectorsGame = '/app_for_collectors/game';


Route generateRoute (RouteSettings settings) {
  switch (settings.name) {
    case rootView:
      return buildRoute(settings, MyHomePage());
      break;
    case appForCollectorsView:
      return buildRoute(settings, AppForCollectorsHome());
      break;
    case appForCollectorsConsole:
      return buildRoute(settings, AppForCollectorsConsole());
      break;
    case appForCollectorsGame:
      return buildRoute(settings, AppForCollectorsGame());
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
