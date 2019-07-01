import 'package:flutter/material.dart';
import 'package:flutter_challenges/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenges',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Challenges'),
        ),
        body: Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(appForCollectorsView);
              },
              child: Text('App For Collectors'),
            ),
          ),
        ),
      ),
    );
  }
}