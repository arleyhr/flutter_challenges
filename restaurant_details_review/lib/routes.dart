import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_details_review/main.dart';

class RestaurantDetailsReviewRoutes {
  static String homePath = '/restaurant_details_review';

  static String getHomePath () {
    return homePath;
  }

  var _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return RestaurantDetailsReview();
  });


  RestaurantDetailsReviewRoutes(Router router) {
    router.define(homePath, handler:  _homeHandler);
  }
}
