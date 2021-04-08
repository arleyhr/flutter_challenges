import 'package:flutter/material.dart';

import '../utils/images.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50))),
            height: 225),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 43),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60))),
          height: 170,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.vertical(
                            bottom: Radius.circular(20))),
                    child: Image.network(e3RedesignImages["e3_logo"]!,
                        fit: BoxFit.contain),
                    width: 65,
                    height: 100,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 20,
                        child: RawMaterialButton(
                          onPressed: () {},
                          child: Image.network(e3RedesignImages["loupe"]!,
                              width: 20),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        margin: EdgeInsets.only(bottom: 5),
                        width: 20,
                        child: RawMaterialButton(
                          onPressed: () {},
                          child: Image.network(e3RedesignImages["dots_menu"]!,
                              width: 20),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Text("Conference 2019",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          height: 60,
          width: MediaQuery.of(context).size.width - 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_left, color: Colors.white54, size: 30),
                onPressed: () {},
              ),
              Text("Microsoft",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w800)),
              Text("Nintendo",
                  style: TextStyle(color: Colors.white54, fontSize: 13)),
              Text("Bethesda",
                  style: TextStyle(color: Colors.white54, fontSize: 13)),
              IconButton(
                icon: Icon(Icons.arrow_right, color: Colors.white, size: 30),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
