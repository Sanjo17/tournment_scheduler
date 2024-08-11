import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/doublesetup.dart';
import 'package:tournment_scheduler/conts/text.dart';

// ignore: camel_case_types, must_be_immutable
class Screen_doubleintro extends StatelessWidget {
  MyAppTexts txt = MyAppTexts();
  Screen_doubleintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tournment app"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Double elimination",
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
            padding: const EdgeInsets.all(20),
            child: Container(
              color: Colors.lightGreen,
              child: Text(
                txt.doubleIntro,
                style: GoogleFonts.actor(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => gotodoublesetup(context),
            child: const Text("setup"),
          ),
        ]),
      ),
    );
  }

  gotodoublesetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ScreenDoublesetup(),
      ),
    );
  }
}
