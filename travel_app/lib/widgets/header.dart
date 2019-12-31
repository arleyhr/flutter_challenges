import 'package:flutter/material.dart';
import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/images.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Search", style: TextStyle(color: travelAppColors["lightgray"], fontSize: 16)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Destination", style: TextStyle(
                color: travelAppColors['gray'],
                fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: 3
              )),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(Icons.search, size: 25, color: travelAppColors['gray']),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.network(travelAppImagesList['menu'], height: 21),
                      SizedBox(width: 25),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("https://i.pravatar.cc/50"),
                      )
                    ],
                  ),
                )
              ),
            ],
          )
        ],
      ),
    );
  }
}