import 'package:flutter/material.dart';
import 'package:app_for_collectors/theme.dart';

class ConsoleDetailSliverAppBar extends StatelessWidget {
  ConsoleDetailSliverAppBar({
    Key? key,
    required this.title,
    required this.totalGames,
    required this.consoleImage,
    required this.consoleId,
    required this.isGridSelected,
    required this.setGridSelected,
    required this.setSwiperSelected,
  }) : super(key: key);

  final String? title;
  final String totalGames;
  final String? consoleImage;
  final String consoleId;
  final bool isGridSelected;
  final Function setGridSelected;
  final Function setSwiperSelected;

  Container _buildHeaderConsole(BuildContext context) {
    return Container(
      color: primaryColor,
      height: 110,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                color: primaryColor,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildGridButtons(context),
                  ],
                ),
              ),
            ],
          ),
          _buildHeroConsole(context),
        ],
      ),
    );
  }

  Row _buildGridButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          onPressed: setSwiperSelected as void Function()?,
          icon: Icon(Icons.view_carousel),
          iconSize: 35,
          color: !isGridSelected ? primaryColor : Colors.grey,
        ),
        SizedBox(),
        IconButton(
          onPressed: setGridSelected as void Function()?,
          icon: Icon(Icons.view_module),
          iconSize: 35,
          color: isGridSelected ? primaryColor : Colors.grey,
        ),
      ],
    );
  }

  Positioned _buildHeroConsole(BuildContext context) {
    return Positioned(
      top: 0,
      child:  Hero(
        tag: 'console-$consoleId',
        child: Image.asset('lib/assets/$consoleImage', height: 70.0, package: 'app_for_collectors'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      pinned: true,
      backgroundColor: primaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title!),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Color.fromRGBO(49, 50, 124, 1),
              borderRadius: BorderRadius.circular(20.0)
            ),
            padding: EdgeInsets.only(left: 7.0, top: 3.0, right: 7.0, bottom: 3.0),
            child: Text(totalGames, style: TextStyle(fontSize: 12))
          )
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add, color: Colors.white, size: 30),
        )
      ],
      expandedHeight: 180,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        background: Container(
          height: double.infinity,
          alignment: Alignment.bottomLeft,
          child: _buildHeaderConsole(context),
        ),
      ),
    );
  }
}