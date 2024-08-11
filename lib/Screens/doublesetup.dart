import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/dialog.dart';
import '../widgets/teamtile.dart';

class ScreenDoublesetup extends StatefulWidget {
  const ScreenDoublesetup({super.key});

  @override
  State<ScreenDoublesetup> createState() => _ScreenDoublesetupState();
}

class _ScreenDoublesetupState extends State<ScreenDoublesetup> {
  final _controller1 = TextEditingController();
  List teams2 = [];

  void addTeams() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            buttontext1: "a",
            buttontext2: "d",
            controller: _controller1,
            save: saveTeam,
            cancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void saveTeam() {
    setState(() {
      teams2.add(_controller1.text);
    });
    Navigator.of(context).pop();
    _controller1.clear();
  }

  void delete(int index) {
    setState(() {
      teams2.removeAt(index);
    });
  }

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
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                  heroTag: "btn3",
                  onPressed: addTeams,
                  child: const Icon(Icons.add),
                ),
              ),
              FloatingActionButton(
                heroTag: "btn4",
                onPressed: () {},
                child: const Icon(Icons.start),
              ),
            ],
          ),
          body: ListView.builder(
              itemCount: teams2.length,
              itemBuilder: (context, index) {
                return TeamTile(
                  teamname: teams2[index],
                  delete: (context) => delete(index),
                  rename: () {},
                );
              }),
        ),
      ),
    );
  }
}
