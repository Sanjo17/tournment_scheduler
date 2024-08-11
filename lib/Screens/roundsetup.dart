import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/dialog.dart';
import '../widgets/teamtile.dart';

class Screen_roundsetup extends StatefulWidget {
  const Screen_roundsetup({super.key});

  @override
  State<Screen_roundsetup> createState() => _Screen_roundsetupState();
}

class _Screen_roundsetupState extends State<Screen_roundsetup> {
  final _controller1 = TextEditingController();
  List teams1 = [];

  void addTeams() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            buttontext1: "d",
            buttontext2: "d",
            controller: _controller1,
            save: saveTeam,
            cancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void saveTeam() {
    setState(() {
      teams1.add(_controller1.text);
    });
    Navigator.of(context).pop();
    _controller1.clear();
  }

  void delete(int index) {
    setState(() {
      teams1.removeAt(index);
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
              itemCount: teams1.length,
              itemBuilder: (context, index) {
                return TeamTile(
                  teamname: teams1[index],
                  delete: (context) => delete(index),
                  rename: () {},
                );
              }),
        ),
      ),
    );
  }
}
