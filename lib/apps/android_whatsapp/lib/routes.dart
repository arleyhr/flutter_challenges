import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:android_whatsapp/main.dart';

class AndroidWhatsappRoutes {
  static String homePath = '/android_whatsapp';

  static String getHomePath() {
    return homePath;
  }

  var _homeHandler =
      Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return WhatsApp();
  });

  AndroidWhatsappRoutes(FluroRouter router) {
    router.define(homePath, handler: _homeHandler);
  }
}
