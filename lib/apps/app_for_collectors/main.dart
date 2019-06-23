import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/console_detail.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/games_tab.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/bottom_bar.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/game_tabs_sliver_appbar.dart';

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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          GameTabsSliverAppBar(size: size, tabController: _tabController),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GamesTab(),
                Container(),
                Container(),
              ],
            )
          )
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

