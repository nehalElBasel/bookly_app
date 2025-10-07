import 'package:bookly_app/core/routing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.montserrat.toString(),
      ),
    );
  }
}
