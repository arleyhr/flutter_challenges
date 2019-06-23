import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/console_detail.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/games_tab.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/bottom_bar.dart';

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
          SliverAppBar(
            leading: IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              icon: Icon(Icons.search, size: 30),
            ),
            title: Text('Your collection'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, size: 30),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                color: Color.fromRGBO(245, 246, 255, 1),
                height: 70,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      width: size.width * 0.75,
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(197, 197, 227, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      width: size.width * 0.88,
                      bottom: 8,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(147, 150, 199, 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          )
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.65,
                      child: TabBar(
                        controller: _tabController,
                        indicatorWeight: 4,
                        tabs: <Widget>[
                          Tab(text: 'Games'),
                          Tab(text: 'Books'),
                          Tab(text: 'Movies'),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ),
          ),
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
