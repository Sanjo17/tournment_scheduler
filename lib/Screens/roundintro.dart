import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/roundsetup.dart';

import '../conts/text.dart';

class Screen_roundintro extends StatelessWidget {
  MyAppTexts txt = MyAppTexts();
  Screen_roundintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tournment app"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Round Robin",
            style: GoogleFonts.actor(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: Colors.orangeAccent,
              child: Text(
                txt.roundIntro,
                style: GoogleFonts.actor(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => gotoroundsetup(context),
            child: const Text("setup"),
          ),
        ]),
      ),
    );
  }

  gotoroundsetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const Screen_roundsetup(),
      ),
    );
  }
}
