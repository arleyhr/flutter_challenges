import 'package:flutter/material.dart';
import 'package:flutter_challenges/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(getRouteName(routeKeys.APP_FOR_COLLECTORS));
              },
              child: Text('App For Collectors'),
            ),
          ),
        ),
      ),
    );
  }
}