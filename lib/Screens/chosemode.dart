import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tournment_scheduler/Screens/doubleintro.dart';
import 'package:tournment_scheduler/Screens/roundintro.dart';
import 'package:tournment_scheduler/Screens/singleintro.dart';

class Screen_chosemode extends StatelessWidget {
  const Screen_chosemode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Tournment app",
              style: GoogleFonts.abel(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Container(
                padding: EdgeInsets.only(top: 70),
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
                  width: 500,
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
                      child:  Text("Single Elimination",style: GoogleFonts.aldrich(
                        fontSize: 30,
                      )
                      ),)),
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
                    child:  Text("Double Elimination",style: GoogleFonts.aldrich(
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
                    child:  Text("Round Robin",style: GoogleFonts.aldrich(
                        fontSize: 30,
                      )),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
  gotosingle(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_singleintro(),
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
