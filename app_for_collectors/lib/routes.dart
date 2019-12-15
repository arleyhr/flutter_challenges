import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:app_for_collectors/main.dart';
import 'package:app_for_collectors/screens/console_detail.dart';
import 'package:app_for_collectors/screens/game_detail.dart';

class AppForCollectorsRoutes {
  static String homePath = '/app_for_collectors';
  static String consolePath = '/app_for_collectors/console/:consoleId';
  static String gamePath = '/app_for_collectors/game/:gameId';

  static String getHomePath () {
    return homePath;
  }

  static String getConsolePath ({ consoleId }) {
    return consolePath.replaceAll(':consoleId', consoleId.toString());
  }

  static String getGamePath ({ gameId }) {
    return gamePath.replaceAll(':gameId', gameId.toString());
  }

  var _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AppForCollectorsHome();
  });

  var _consoleHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AppForCollectorsConsole(consoleId: params['consoleId']?.first);
  });

  var _gameHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
    return AppForCollectorsGame(gameId: params['gameId']?.first);
  });

  AppForCollectorsRoutes(Router router) {
    router.define(homePath, handler:  _homeHandler);
    router.define(consolePath, handler:  _consoleHandler);
    router.define(gamePath, handler:  _gameHandler);
  }
}
