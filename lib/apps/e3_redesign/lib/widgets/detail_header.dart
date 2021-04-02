import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';

class DetailHeader extends StatelessWidget {
  const DetailHeader(
      {Key? key, this.cover, this.name, this.release, this.platform})
      : super(key: key);

  final ImageProvider? cover;
  final String? name;
  final String? platform;
  final String? release;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(image: cover!, fit: BoxFit.cover),
            ),
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.only(left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name!,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        letterSpacing: 1.2,
                        shadows: [
                          Shadow(color: Colors.black87, blurRadius: 30)
                        ])),
                SizedBox(height: 10),
                Text(release!,
                    style: TextStyle(color: Colors.white, letterSpacing: 1.2)),
                SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 50,
            child: Container(
                height: 50,
                width: 60,
                child: RawMaterialButton(
                  fillColor: Colors.black,
                  elevation: 0,
                  padding: EdgeInsets.only(left: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  onPressed: () {
                    Application.router!.pop(context);
                  },
                  child: Icon(Icons.keyboard_arrow_left,
                      color: Colors.white, size: 35),
                )),
          ),
          Positioned(
            top: 220,
            right: 0,
            child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.redAccent.withOpacity(0.8),
                      blurRadius: 30,
                      offset: Offset(5, 3))
                ]),
                height: 60,
                width: 140,
                child: RawMaterialButton(
                  fillColor: Colors.redAccent,
                  elevation: 0,
                  padding: EdgeInsets.only(right: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                  ),
                  onPressed: () {
                    Application.router!.pop(context);
                  },
                  child: Text("Pre Order",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600)),
                )),
          ),
          Positioned(
              left: 40,
              bottom: 0,
              child: Row(
                children: <Widget>[
                  Text("News", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 20),
                  Text("Outstanding"),
                ],
              )),
          Positioned(
              top: 50,
              right: 10,
              child: RotatedBox(
                quarterTurns: 1,
                child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    child: Text(platform!,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            shadows: [
                              Shadow(color: Colors.black, blurRadius: 20)
                            ]))),
              ))
        ],
      ),
    );
  }
}
