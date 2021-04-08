import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import './screens/detail.dart';
import './screens/home.dart';

class E3RedesignRoutes {
  static String homePath = '/e3_redesign';
  static String detailPath = '/e3_redesign/detail/:gameId';

  static String getHomePath() {
    return homePath;
  }

  static String getDetailPath({gameId}) {
    return detailPath.replaceAll(':gameId', gameId.toString());
  }

  var _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return E3RedesignHome();
  });

  var _detailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return E3RedesignDetail(gameId: params['gameId']?.first);
  });

  E3RedesignRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
    router.define(detailPath, handler: _detailHandler);
  }
}
