import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/chosemode.dart';

// ignore: camel_case_types
class Screen_Selectsport extends StatelessWidget {
  const Screen_Selectsport({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Tourment app",
              style: GoogleFonts.abel(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "SELECT SPORT",
                style: GoogleFonts.actor(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 300),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/footballstadium.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.only(right: 161, left: 161, top: 8, bottom: 8),
              color: Colors.orangeAccent,
              child: ElevatedButton(
                onPressed: () {
                  gotochose(context);
                },
                child: const Text("select"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  gotochose(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_chosemode(),
      ),
    );
  }
}
