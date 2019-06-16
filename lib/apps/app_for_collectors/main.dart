import 'package:flutter/material.dart';


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
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(63, 68, 157, 1),
        accentColor: Color.fromRGBO(128, 240, 180, 1),
        tabBarTheme: TabBarTheme(
          labelColor: Color.fromRGBO(128, 240, 180, 1),
          unselectedLabelColor: Colors.white
        ),
      ),
      home: Scaffold(
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
            Container(),
            Container(),
            Container(),
          ],
        )
      ),
    );
  }
}