import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/chosemode.dart';
import 'package:tournment_scheduler/widgets/appbar.dart';
import 'package:tournment_scheduler/widgets/bottomnav.dart';

// ignore: camel_case_types
class Screen_Selectsport extends StatefulWidget {
  const Screen_Selectsport({super.key});

  @override
  State<Screen_Selectsport> createState() => _Screen_SelectsportState();
}

// ignore: camel_case_types
class _Screen_SelectsportState extends State<Screen_Selectsport> {
  final int _currentindex = 0;

  // ignore: prefer_typing_uninitialized_variables
  int? newIndex;

  // ignore: non_constant_identifier_names
  BotNavOnTap(newIndex) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
          currentIndex: _currentindex,
          text1: "home",
          text2: "Tournement",
          text3: "profile",
          onTap: BotNavOnTap(newIndex)),
      appBar: const MyAppNav(
        title: "Tournement App",
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
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
              padding: const EdgeInsets.only(
                  right: 161, left: 161, top: 8, bottom: 8),
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
        builder: (ctx) => const Screen_chosemode(),
      ),
    );
  }
}
