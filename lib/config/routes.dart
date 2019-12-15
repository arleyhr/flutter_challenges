import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/restaurant_details_review/routes.dart';
import 'package:flutter_challenges/home.dart';

import 'package:flutter_challenges/apps/app_for_collectors/routes.dart';

const String rootView = '/';

var rootViewHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyHomePage();
});

class Routes {
  static void configureRoutes(Router router) {
    router.define(rootView, handler: rootViewHandler);

    new AppForCollectorsRoutes(router);
    new RestaurantDetailsReviewRoutes(router);
  }
}