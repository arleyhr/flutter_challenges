import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import './screens/home.dart';

class FikaCoffeeRoutes {
  static String homePath = '/fike_app';

  static String getHomePath() {
    return homePath;
  }

  var _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return FikeCoffeeHome();
  });

  FikaCoffeeRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
  }
}
