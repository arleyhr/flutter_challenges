import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/detail.dart';
import 'package:travel_app/screens/home.dart';

class TravelAppRoutes {
  static String homePath = '/travel_app';
  static String detailPath = '/travel_app/detail/:placeId';

  static String getHomePath() {
    return homePath;
  }

  static String getDetailPath({placeId}) {
    return detailPath.replaceAll(':placeId', placeId.toString());
  }

  var _homeHandler =
      Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return TravelAppHome();
  });

  var _detailHandler =
      Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return TravelAppDetail(placeId: params['placeId']?.first);
  });

  TravelAppRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
    router.define(detailPath, handler: _detailHandler);
  }
}
