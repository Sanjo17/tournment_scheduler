import 'package:flutter/material.dart';
import 'package:tournment_scheduler/database/db.dart';

class Team {
  String name;

  Team(this.name);
}

class Match {
  Team team1;
  Team team2;
  int team1Score;
  int team2Score;

  Match(
      {required this.team1,
      required this.team2,
      this.team1Score = 0,
      this.team2Score = 0});
}

// ignore: camel_case_types
class Screen_singlesetup extends StatefulWidget {
  const Screen_singlesetup({super.key});

  @override
  State<Screen_singlesetup> createState() => _Screen_singlesetupState();
}

// ignore: camel_case_types
class _Screen_singlesetupState extends State<Screen_singlesetup> {
  final List<List<TournamentModel>> team = [];
  final TextEditingController _teamNameController = TextEditingController();
  final List<List<Match>> rounds = [];
  final List<Tab> tabs = [];

  @override
  void dispose() {
    _teamNameController.dispose();
    super.dispose();
  }

  void addTeam(String name) {
    setState(() {
      teams.add(Team(name));
    });
    _teamNameController.clear();
  }

  void scheduleMatches() {
    setState(() {
      rounds.clear();
      tabs.clear();

      List<Match> initialMatches = [];
      for (int i = 0; i < teams.length; i += 2) {
        initialMatches.add(Match(team1: teams[i], team2: teams[i + 1]));
      }
      rounds.add(initialMatches);

      int roundCount = 1;
      while (rounds[rounds.length - 1].length > 1) {
        List<Match> nextRound = [];
        for (int i = 0; i < rounds[rounds.length - 1].length; i += 2) {
          Team winner1 = rounds[rounds.length - 1][i].team1Score >
                  rounds[rounds.length - 1][i].team2Score
              ? rounds[rounds.length - 1][i].team1
              : rounds[rounds.length - 1][i].team2;
          Team winner2 = rounds[rounds.length - 1][i + 1].team1Score >
                  rounds[rounds.length - 1][i + 1].team2Score
              ? rounds[rounds.length - 1][i + 1].team1
              : rounds[rounds.length - 1][i + 1].team2;
          nextRound.add(Match(team1: winner1, team2: winner2));
        }
        rounds.add(nextRound);
        roundCount++;
      }

      for (int i = 0; i < roundCount; i++) {
        tabs.add(Tab(text: 'Round ${i + 1}'));
      }
    });
  }

  Widget buildMatchTile(Match match) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(match.team1.name),
          Text(match.team2.name),
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Score: ${match.team1Score}'),
          Text('Score: ${match.team2Score}'),
        ],
      ),
      trailing: IconButton(
        icon: const Icon(Icons.edit),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              TextEditingController team1ScoreController =
                  TextEditingController(text: match.team1Score.toString());
              TextEditingController team2ScoreController =
                  TextEditingController(text: match.team2Score.toString());

              return AlertDialog(
                title: const Text('Edit Scores'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: team1ScoreController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: match.team1.name),
                    ),
                    TextField(
                      controller: team2ScoreController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: match.team2.name),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text('Update'),
                    onPressed: () {
                      setState(() {
                        match.team1Score = int.parse(team1ScoreController.text);
                        match.team2Score = int.parse(team2ScoreController.text);
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Team Names',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Team Names'),
            bottom: TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: List.generate(rounds.length, (index) {
              List<Match> matches = rounds[index];
              return ListView.builder(
                itemCount: matches.length,
                itemBuilder: (context, matchIndex) {
                  Match match = matches[matchIndex];
                  return buildMatchTile(match);
                },
              );
            }),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Add Team'),
                    content: TextField(
                      controller: _teamNameController,
                      decoration:
                          const InputDecoration(hintText: 'Enter a team name'),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text('Add'),
                        onPressed: () {
                          addTeam(_teamNameController.text);
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: scheduleMatches,
                child: const Text('Schedule'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
