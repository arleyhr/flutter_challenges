import 'package:flutter/material.dart';
class TicketReservationInteraction extends StatefulWidget {
  TicketReservationInteraction({Key key}) : super(key: key);

  @override
  _TicketReservationInteractionState createState() => _TicketReservationInteractionState();
}

class _TicketReservationInteractionState extends State<TicketReservationInteraction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
            )
         ],
       )
    );
  }
}
