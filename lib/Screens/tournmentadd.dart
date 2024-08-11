import 'package:flutter/material.dart';

void main() => runApp(TournamentApp());

class TournamentApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tournament App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TournamentHomePage(),
    );
  }
}

class TournamentHomePage extends StatelessWidget {
  final List<String> tournaments = [
    'Tournament 1',
    'Tournament 2',
    'Tournament 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tournaments'),
      ),
      body: ListView.builder(
        itemCount: tournaments.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(tournaments[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TournamentDetailsPage(tournamentName: tournaments[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TournamentDetailsPage extends StatelessWidget {
  final String tournamentName;

  TournamentDetailsPage({required this.tournamentName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tournamentName),
      ),
      body: Center(
        child: Text('Details for $tournamentName'),
      ),
    );
  }
}
