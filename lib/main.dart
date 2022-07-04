import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text(
            'Spytaj Dzinna ona prawdę Ci powie',
            style: GoogleFonts.aladin(
              fontSize: 35,
              letterSpacing: 9,
              backgroundColor: Colors.brown,
            ),
          ),
        ),
      ),
    );
  }
}
