import 'package:flutter/material.dart';

const imagesPath = "https://res.cloudinary.com/arleyhr/image/upload/v1578065175/flutter/ticket-reservation-interaction";
const popcorn = "$imagesPath/popcorn_rv3spp.png";
const corn = "$imagesPath/corn_oyow5w.png";
const redColor = Color(0xFFF74200);

class TicketReservationInteraction extends StatefulWidget {
  TicketReservationInteraction({Key key}) : super(key: key);

  @override
  _TicketReservationInteractionState createState() => _TicketReservationInteractionState();
}

class _TicketReservationInteractionState extends State<TicketReservationInteraction> with TickerProviderStateMixin {
  double selectionPosition = 0.0;
  double selectionPositionWidth = 25.0;
  double selectionPositionMargin = 15.0;

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10))
      ),
       child: Column(
         children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(icon: Icon(Icons.close, color: Colors.grey, size: 26), onPressed: Navigator.of(context).pop),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("How many seats?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            Container(
              height: 120,
              width: 200,
              margin: EdgeInsets.only(top: 30),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 20,
                    bottom: 15,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      height: 90,
                      child: Image.network(popcorn)
                    )
                  ),
                  Positioned(
                    right: 20,
                    bottom: 15,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      height: 90,
                      child: Image.network(popcorn)
                    )
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      height: 150,
                      child: Image.network(popcorn),
                    ),
                  ),
                ]
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: Container(
                height: 40,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      top: 5,
                      left: selectionPosition,
                      child: Container(
                        decoration:  BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        height: 30,
                        width: 25,
                        child: null,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: List<Widget>.generate(6, (i) {
                          final lastIndex  = 5;
                          return Container(
                            margin: EdgeInsets.only(right: i != lastIndex ? selectionPositionMargin : 0),
                            child: GestureDetector(
                              onTapDown: (TapDownDetails details) {
                                final newPosition = (i * selectionPositionWidth) + (i * selectionPositionMargin);
                                setState(() {
                                  selectionPosition = newPosition;
                                });
                              },
                              child: Container(
                                width: 25,
                                height: 30,
                                alignment: Alignment.center,
                                child: Text((i + 1).toString(), style: TextStyle(fontSize: 18, color: Colors.black54), textAlign: TextAlign.center),
                              ),
                            ),
                          );
                        })
                      ),
                    ),
                  ],
                ),
              ),
            )
         ],
       )
    );
  }
}
