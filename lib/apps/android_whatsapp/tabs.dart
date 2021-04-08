import 'package:flutter/material.dart';
import './screens/calls.dart';
import './screens/camera.dart';
import './screens/chats.dart';
import './screens/status.dart';
import './widgets/wh_fab.dart';

class WhatAppTabs extends StatefulWidget {
  // var cameras;
  // WhatAppTabs({ this.cameras });
  _WhatAppTabsState createState() => _WhatAppTabsState();
}

class _WhatAppTabsState extends State<WhatAppTabs>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late var currentFabIndex;

  final List fabs = [
    WhatsAppFab(
        icon: Icon(Icons.camera_alt, color: Colors.white), onPressed: () {}),
    WhatsAppFab(
        icon: Icon(Icons.message, color: Colors.white), onPressed: () {}),
    Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10.0, right: 5.0),
          child: WhatsAppFab(
              backgroundColor: Color(0xFFECEFF1),
              width: 45.0,
              height: 45.0,
              icon: Icon(
                Icons.edit,
                color: Colors.grey,
              ),
              onPressed: () {}),
        ),
        WhatsAppFab(
            icon: Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {}),
      ],
    ),
    WhatsAppFab(
        icon: Icon(Icons.add_call, color: Colors.white), onPressed: () {}),
  ];

  void _getFab() {
    setState(() {
      currentFabIndex = _tabController!.index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController!.addListener(_getFab);
    currentFabIndex = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: fabs[currentFabIndex],
        appBar: AppBar(
          title: Text("WhatsApp"),
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
            PopupMenuButton(
              child: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: "1",
                  child: Text('New group'),
                ),
                PopupMenuItem(
                  value: "2",
                  child: Text('Whatsapp Web'),
                ),
                PopupMenuItem(
                  value: "3",
                  child: Text('Settings'),
                )
              ],
            ),
            // IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {})
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            new CameraScreen(),
            new ChatsScreen(),
            new StatusScreen(),
            new CallScreen()
          ],
        ));
  }
}
