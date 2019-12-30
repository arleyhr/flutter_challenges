import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/home.dart';

class TravelAppRoutes {
  static String homePath = '/travel_app';

  static String getHomePath () {
    return homePath;
  }

  var _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return TravelAppHome();
  });


  TravelAppRoutes(Router router) {
    router.define(homePath, handler:  _homeHandler);
  }
}
