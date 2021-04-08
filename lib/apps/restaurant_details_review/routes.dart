import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './main.dart';

class RestaurantDetailsReviewRoutes {
  static String homePath = '/restaurant_details_review';

  static String getHomePath() {
    return homePath;
  }

  var _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return RestaurantDetailsReview();
  });

  RestaurantDetailsReviewRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
  }
}
