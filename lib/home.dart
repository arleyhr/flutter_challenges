import 'package:flutter/material.dart';

import './application.dart';

import 'apps/app_for_collectors/routes.dart';
import 'apps/restaurant_details_review/routes.dart';
import 'apps/android_whatsapp/routes.dart';
import 'apps/tourism_app_concept/routes.dart';
import 'apps/e3_redesign/routes.dart';
import 'apps/ticket_reservation_interaction/modal.dart';
import 'apps/fika_coffee/routes.dart';

final ticketReservationModal = new TicketModal();

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
  // {
  //   "name": "Multi Option Flare Animation",
  //   "path": MultiOptionFlareRoutes.homePath,
  //   "icon": Icons.bubble_chart
  // },
  {
    "name": "Whatsapp Android",
    "path": AndroidWhatsappRoutes.homePath,
    "icon": Icons.chat_bubble_outline
  },
  {
    "name": "Tourism App Concept",
    "path": TravelAppRoutes.homePath,
    "icon": Icons.local_airport
  },
  {
    "name": "Ticket Reservation Interaction",
    "path": null,
    "icon": Icons.movie,
    "navigate": (context) {
      ticketReservationModal.showModal(context);
    }
  },
  {
    "name": "E3 Redesign",
    "path": E3RedesignRoutes.homePath,
    "icon": Icons.gamepad
  },
  {
    "name": "Fika Coffee",
    "path": FikaCoffeeRoutes.homePath,
    "icon": Icons.favorite_border
  },
];

class MyHomePage extends StatelessWidget {
  const MyHomePage() : super();

  _goToPage(context, page) {
    Application.router!.navigateTo(context, page);
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
                onTap: () => item['path'] != null
                    ? _goToPage(context, item['path'])
                    : item['navigate'](context),
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
