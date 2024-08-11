import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tournment_scheduler/Screens/singlesetup.dart';

class AddTournament extends StatefulWidget {
  const AddTournament({super.key});

  @override
  State<AddTournament> createState() => _AddTournamentState();
}

class _AddTournamentState extends State<AddTournament> {
  List tournament = ["k"];
  final _tbox = Hive.openBox('tournament');
  final _mbox = Hive.openBox('matches');

  gotoaddteamsetup(context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const Screen_singlesetup(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tournamnets"),
        ),
        body: ListView.builder(
            itemCount: tournament.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(tournament[index]),
                onTap: gotoaddteamsetup(context),
              );
            }),
        floatingActionButton: ElevatedButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ));
  }
}
