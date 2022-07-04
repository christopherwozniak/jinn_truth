import 'dart:math';

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
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Zapytaj Dzinne ona Ci odpowie.',
              style: GoogleFonts.aladin(
                backgroundColor: Colors.amber,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child:
                  Text('Przedstaw prawde Dzinno', style: GoogleFonts.aladin()),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const SecondPage(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text(
            'Prawda czy Fałsz',
            style: GoogleFonts.aladin(),
          ),
          backgroundColor: result == true ? Colors.green : Colors.red,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/Jinn.jpeg'),
                radius: 160,
              ),
              SizedBox(
                height: 110,
                child: Text('Dzinn przepowiedziala ze jest to...',
                    style: GoogleFonts.aladin(
                      fontSize: 20,
                      color: Colors.amber,
                      backgroundColor: Colors.purple,
                    )),
              ),
              if (result == true)
                Text(
                  'PRAWDA',
                  style: GoogleFonts.aladin(
                      backgroundColor: Colors.green, fontSize: 40),
                ),
              if (result == false)
                Text('KLAMSTWO',
                    style: GoogleFonts.aladin(
                        backgroundColor: Colors.red, fontSize: 40)),
              const SizedBox(height: 25),
              ElevatedButton(
                // ignore: sort_child_properties_last
                child: Text(
                  'Spróbuj ponownie',
                  style: GoogleFonts.aladin(),
                ),
                style: ElevatedButton.styleFrom(
                  primary: result == true ? Colors.green : Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ));
  }
}
