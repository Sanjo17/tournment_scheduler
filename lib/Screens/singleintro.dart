import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/addtournament.dart';
import 'package:tournment_scheduler/Screens/selectsport.dart';
import 'package:tournment_scheduler/conts/text.dart';

// ignore: camel_case_types
class Screen_singleintro extends StatefulWidget {
  const Screen_singleintro({super.key});

  @override
  State<Screen_singleintro> createState() => _Screen_singleintroState();
}

class _Screen_singleintroState extends State<Screen_singleintro> {
  MyAppTexts txt = MyAppTexts();
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: (newIndex) {
          setState(
            () {
              _currentindex = newIndex;
              where(_currentindex, context);
            },
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.place), label: "tournments"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
      appBar: AppBar(
        title: const Text("Tournment app"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Single elimination",
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
              color: Colors.lightBlueAccent,
              child: Text(
                txt.singleIntro,
                style: GoogleFonts.actor(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => gotoaddtournamentsetup(context),
            child: const Text("setup"),
          ),
        ]),
      ),
    );
  }

  gotoaddtournamentsetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const AddTournament(),
      ),
    );
  }

  where(cureentindex, context) {
    if (_currentindex == 0) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const Screen_Selectsport(),
      ));
    }
  }
}
