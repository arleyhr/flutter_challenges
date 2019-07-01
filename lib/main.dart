import 'package:flutter/material.dart';

import 'package:flutter_challenges/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: rootView,
      onGenerateRoute: generateRoute
    );
  }
}
