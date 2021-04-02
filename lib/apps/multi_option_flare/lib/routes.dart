import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:multi_option_flare/main.dart';

class MultiOptionFlareRoutes {
  static String homePath = '/multi_option_flare';

  static String getHomePath() {
    return homePath;
  }

  var _homeHandler =
      Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return MultiOptionFlare();
  });

  MultiOptionFlareRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
  }
}
