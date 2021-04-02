import 'package:flutter/material.dart';
import 'package:app_for_collectors/screens/games_tab.dart';
import 'package:app_for_collectors/widgets/bottom_bar.dart';
import 'package:app_for_collectors/widgets/game_tabs_sliver_appbar.dart';

class AppForCollectorsHome extends StatefulWidget {
  const AppForCollectorsHome({
    Key? key,
  }) : super(key: key);

  @override
  _AppForCollectorsHomeState createState() => _AppForCollectorsHomeState();
}

class _AppForCollectorsHomeState extends State<AppForCollectorsHome> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length: 3);
  }

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

