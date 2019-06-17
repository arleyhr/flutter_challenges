import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/console_detail.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/games_tab.dart';

Color primaryColor = Color.fromRGBO(63, 68, 157, 1);
Color secondaryColor = Color.fromRGBO(128, 240, 180, 1);

class AppForCollectors extends StatefulWidget {
  const AppForCollectors({Key key}) : super(key: key);

  @override
  _AppForCollectorsState createState() => _AppForCollectorsState();
}

class _AppForCollectorsState extends State<AppForCollectors> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'App For Collectors',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: secondaryColor,
        tabBarTheme: TabBarTheme(
          labelColor: secondaryColor,
          unselectedLabelColor: Colors.white
        ),
      ),
      home: ScaffoldHome(tabController: _tabController),
      routes: {
        'afc_home': (BuildContext context) => ScaffoldHome(tabController: _tabController),
        'afc_games': (BuildContext context) => ConsoleDetail()
      },
    );
  }
}

class ScaffoldHome extends StatelessWidget {
  const ScaffoldHome({
    Key key,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text('Your collection', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.more_vert)
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(text: 'Games'),
            Tab(text: 'Books'),
            Tab(text: 'Movies'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          GamesTab(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color.fromRGBO(245, 246, 255, 1),
      elevation: 0,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomBarButton(icon: Icons.star_border, onPressed: () {}),
            BottomBarButton(icon: Icons.apps, onPressed: () {}),
            BottomBarButton(icon: Icons.person_outline, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({
    Key key,
    @required this.icon,
    @required this.onPressed
  }) : super(key: key);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.transparent,
      elevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      child: Icon(icon, size: 34.0, color: primaryColor),
    );
  }
}