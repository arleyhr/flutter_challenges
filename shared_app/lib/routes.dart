import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/home.dart';

import 'package:app_for_collectors/routes.dart';
import 'package:restaurant_details_review/routes.dart';
import 'package:multi_option_flare/routes.dart';
import 'package:android_whatsapp/routes.dart';
import 'package:travel_app/routes.dart';

const String rootView = '/';

var rootViewHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MyHomePage();
});

class Routes {
  static void configureRoutes(Router router) {
    router.define(rootView, handler: rootViewHandler);

    new AppForCollectorsRoutes(router);
    new RestaurantDetailsReviewRoutes(router);
    new MultiOptionFlareRoutes(router);
    new AndroidWhatsappRoutes(router);
    new TravelAppRoutes(router);
  }
}