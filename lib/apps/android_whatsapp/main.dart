import 'package:flutter/material.dart';
import './tabs.dart';

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "WhatsApp Clone",
        theme: ThemeData(
          primaryColor: Color(0xff075E54),
          accentColor: Color(0xff25D366),
        ),
        debugShowCheckedModeBanner: false,
        home: WhatAppTabs());
  }
}
