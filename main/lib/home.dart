import 'package:flutter/material.dart';
import 'package:multi_option_flare/routes.dart';
import 'package:restaurant_details_review/routes.dart';
import 'package:shared_app/application.dart';

import 'package:app_for_collectors/routes.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  _goToPage (context, page) {
    Application.router.navigateTo(context, page);
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
                onPressed: () => _goToPage(context, AppForCollectorsRoutes.homePath),
                child: Text('App For Collectors'),
              ),
              FlatButton(
                onPressed: () => _goToPage(context, RestaurantDetailsReviewRoutes.homePath),
                child: Text('Restaurants Details Review'),
              ),
              FlatButton(
                onPressed: () => _goToPage(context, MultiOptionFlareRoutes.homePath),
                child: Text('Multi Option Flare Animation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}