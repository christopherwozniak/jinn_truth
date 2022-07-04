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
            'Prawda czy fałsz',
            style: GoogleFonts.aladin(
              fontSize: 35,
              letterSpacing: 9,
              color: Colors.brown,
              backgroundColor: Colors.yellow,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                  backgroundImage: AssetImage('images/Jinn.jpeg'), radius: 160),
              const SizedBox(
                height: 80,
              ),
              Text('Czy to jest prawda, czy to jest klamstwo?',
                  style: GoogleFonts.aladin(
                    backgroundColor: Colors.amber,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Zapytaj Dzina on Ci odpowie.',
                style: GoogleFonts.aladin(
                  backgroundColor: Colors.amber,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
