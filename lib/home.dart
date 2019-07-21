import 'package:flutter/material.dart';
import 'package:flutter_challenges/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  _goToPage (context, page) {
    Navigator.of(context).pushNamed(page);
  }

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
          child: ListView(
            children: <Widget>[
              FlatButton(
                onPressed: () => _goToPage(context, appForCollectorsView),
                child: Text('App For Collectors'),
              ),
              FlatButton(
                onPressed: () => _goToPage(context, restaurantsDetailsReview),
                child: Text('Restaurants Details Review'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}