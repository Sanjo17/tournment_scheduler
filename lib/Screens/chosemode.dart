import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/doubleintro.dart';
import 'package:tournment_scheduler/Screens/profile.dart';
import 'package:tournment_scheduler/Screens/roundintro.dart';
import 'package:tournment_scheduler/Screens/selectsport.dart';
import 'package:tournment_scheduler/Screens/singleintro.dart';
import 'package:tournment_scheduler/Screens/tournment.dart';
import 'package:tournment_scheduler/widgets/appbar.dart';

class Screen_chosemode extends StatefulWidget {
  const Screen_chosemode({super.key});

  @override
  State<Screen_chosemode> createState() => _Screen_chosemodeState();
}

class _Screen_chosemodeState extends State<Screen_chosemode> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppNav(
        title: "Tournment App",
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text(
                    "Select mode of tournment",
                    style: GoogleFonts.actor(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        onPressed: () {
                          gotosingle(context);
                        },
                        child: Text("Single Elimination",
                            style: GoogleFonts.aldrich(
                              fontSize: 30,
                            )),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 500,
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {
                        gotodouble(context);
                      },
                      child: Text("Double Elimination",
                          style: GoogleFonts.aldrich(
                            fontSize: 30,
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 500,
                    height: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      onPressed: () {
                        gotoround(context);
                      },
                      child: Text("Round Robin",
                          style: GoogleFonts.aldrich(
                            fontSize: 30,
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
    );
  }

  where(cureentindex, context) {
    if (_currentindex == 0) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const Screen_Selectsport(),
      ));
    } else if (_currentindex == 1) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const Screen_tourn(),
      ));
    } else if (_currentindex == 2) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => const Screen_pro(),
      ));
    }
  }

  gotosingle(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const Screen_singleintro(),
      ),
    );
  }

  gotodouble(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_doubleintro(),
      ),
    );
  }

  gotoround(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_roundintro(),
      ),
    );
  }
}
