import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTravelApp extends StatelessWidget {
  final Widget? child;
  const ThemeTravelApp({ Key? key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: child
    );
  }
}