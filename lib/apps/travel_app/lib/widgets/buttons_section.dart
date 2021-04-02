import 'package:flutter/material.dart';

import 'package:travel_app/utils/colors.dart';
import 'package:travel_app/utils/images.dart';
import 'package:travel_app/widgets/rounded_square_button.dart';

final iconList = [
  {
    "label": "Snow",
    "icon": Image.network(travelAppImagesList['snow']!, width: 23),
    "gradient": LinearGradient(
                  colors: [
                    Color(0xFFFFD969),
                    Color(0xFFFFAB86),
                  ]
                )
  },
  {
    "label": "Beach",
    "icon": Image.network(travelAppImagesList['orion-sun-lounger']!, width: 23),
    "gradient": LinearGradient(
                  colors: [
                    Color(0xFFFF6480),
                    Color(0xFFF22E63),
                  ]
                )
  },
  {
    "label": "Hills",
    "icon": Image.network(travelAppImagesList['mountain-summit']!, width: 25),
    "gradient": LinearGradient(
                  colors: [
                    Color(0xFF6BA4F9),
                    Color(0xFFD596F6),
                  ]
                )
  },
  {
    "label": "Desert",
    "icon": Image.network(travelAppImagesList['cactus']!, width: 23),
    "gradient": LinearGradient(
                  colors: [
                    Color(0xFFFF7569),
                    Color(0xFFFF4E54),
                  ]
                )
  },
];


class ButtonsSection extends StatelessWidget {
  const ButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Column(
        children: <Widget>[
          Text("Explore nearby", style: TextStyle(
            fontSize: 19,
            color: travelAppColors["gray"],
            fontWeight: FontWeight.w600,
            letterSpacing: 2.8
          )),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: iconList.map((item) {
              return Column(
                children: <Widget>[
                  RoundedSquareButton(
                    onTap: () {},
                    gradient: item["gradient"] as Gradient?,
                    icon: item["icon"] as Widget?
                  ),
                  SizedBox(height: 10),
                  Text(item["label"] as String, style: TextStyle(color: travelAppColors["gray"], letterSpacing: 1.3, fontSize: 15))
                ],
              );
            }).toList()
          )
        ],
      ),
    );
  }
}