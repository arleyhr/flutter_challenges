import 'package:flutter/material.dart';

import 'main.dart';

class TicketModal {
    showModal(BuildContext context) {
      showModalBottomSheet(
        backgroundColor: Colors.black.withOpacity(0.5),
        useRootNavigator: true,
        isDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return TicketReservationInteraction();
        }
      );
    }
}