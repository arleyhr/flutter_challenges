import 'package:flutter/material.dart';

class ThemeE3Redesign extends StatelessWidget {
  final Widget? child;
  const ThemeE3Redesign({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // textTheme: GoogleFonts.odibeeSansTextTheme()
            ),
        home: child);
  }
}
