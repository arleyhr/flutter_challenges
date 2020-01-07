import 'package:flutter/material.dart';
import 'package:app_for_collectors/theme.dart';

class GameTabsSliverAppBar extends StatelessWidget {
  const GameTabsSliverAppBar({
    Key key,
    @required this.size,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);

  final Size size;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: primaryColor,
      pinned: true,
      floating: true,
      elevation: 0,
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
                  indicatorColor: secondaryColor,
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
    );
  }
}
