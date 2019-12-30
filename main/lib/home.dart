import 'package:flutter/material.dart';

import 'package:shared_app/application.dart';
import 'package:multi_option_flare/routes.dart';
import 'package:restaurant_details_review/routes.dart';
import 'package:app_for_collectors/routes.dart';
import 'package:android_whatsapp/routes.dart';
import 'package:travel_app/routes.dart';


List apps = [
  {
    "name": "App For Collectors",
    "path": AppForCollectorsRoutes.homePath,
    "icon": Icons.gamepad
  },
  {
    "name": "Restaurants Details Review",
    "path": RestaurantDetailsReviewRoutes.homePath,
    "icon": Icons.fastfood
  },
  {
    "name": "Multi Option Flare Animation",
    "path": MultiOptionFlareRoutes.homePath,
    "icon": Icons.bubble_chart
  },
  {
    "name": "Whatsapp Android",
    "path": AndroidWhatsappRoutes.homePath,
    "icon": Icons.chat_bubble_outline
  },
  {
    "name": "Travel app",
    "path": TravelAppRoutes.homePath,
    "icon": Icons.local_airport
  },
];

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
          child: ListView.builder(
            itemCount: apps.length,
            itemBuilder: (BuildContext context, index) {
              var item = apps[index];

              return ListTile(
                title: Text(item['name']),
                onTap: () => _goToPage(context, item['path']),
                trailing: Icon(Icons.chevron_right),
                leading: Icon(item['icon']),
              );
            },
          ),
        ),
      ),
    );
  }
}