import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';

import 'package:shared_app/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp() : super();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
    final router = new FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Application.router!.generator,
    );
  }
}
