import 'package:flutter/material.dart';
import 'package:travel_app/utils/images.dart';

const gray = Color(0xFF5E5E5E);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 44),
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Search", style: TextStyle(color: Color(0xFFA1A1A1), fontSize: 16)),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Destination", style: TextStyle(
                color: gray,
                fontSize: 22,
                fontWeight: FontWeight.w600,
                letterSpacing: 3
              )),
              Container(
                margin: EdgeInsets.only(left: 5),
                child: Icon(Icons.search, size: 25, color: gray),
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