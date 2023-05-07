import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen_roundsetup extends StatelessWidget {
  const Screen_roundsetup({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Tournment app",
                style: GoogleFonts.abel(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          body: Center(
            child: Column(
              children: [
                Text(
                  "Round robin",
                  style: GoogleFonts.actor(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
