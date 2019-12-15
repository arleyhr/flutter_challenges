import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/home.dart';

import 'package:flutter_challenges/apps/restaurant_details_review/main.dart';

import 'package:flutter_challenges/apps/app_for_collectors/routes.dart';

// Route contansts
const String rootView = '/';

const String appForCollectorsView = '/app_for_collectors';
const String appForCollectorsConsole = '/app_for_collectors/console';
const String appForCollectorsGame = '/app_for_collectors/game';

const String restaurantsDetailsReview = '/restaurants_details_review';


Route generateRoute (RouteSettings settings) {
  switch (settings.name) {

// Restaurants Details Review ===
    case restaurantsDetailsReview:
      return buildRoute(settings, RestaurantDetailsReview());
      break;
// === Restaurants Details Review

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


var rootViewHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyHomePage();
});

class Routes {
  static void configureRoutes(Router router) {
    router.define(rootView, handler: rootViewHandler);

    new AppForCollectorsRoutes(router);
  }
}