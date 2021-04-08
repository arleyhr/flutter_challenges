import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './home.dart';

import 'apps/app_for_collectors/routes.dart';
import 'apps/restaurant_details_review/routes.dart';
import 'apps/android_whatsapp/routes.dart';
import 'apps/tourism_app_concept/routes.dart';
import 'apps/e3_redesign/routes.dart';
import 'apps/fika_coffee/routes.dart';

const String rootView = '/';

var rootViewHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return MyHomePage();
});

class Routes {
  static void configureRoutes(FluroRouter router) {
    router.define(rootView, handler: rootViewHandler);

    new AppForCollectorsRoutes(router);
    new RestaurantDetailsReviewRoutes(router);
    // new MultiOptionFlareRoutes(router);
    new AndroidWhatsappRoutes(router);
    new TravelAppRoutes(router);
    new E3RedesignRoutes(router);
    new FikaCoffeeRoutes(router);
  }
}
