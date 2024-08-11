

import 'package:hive_flutter/hive_flutter.dart';


 part 'db.g.dart';
@HiveType(typeId: 0)
class TournamentModel extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  int totalTeams;

  @HiveField(2)
  List<String> teams;

  @HiveField(3)
  List<MatchModel> matches;

  TournamentModel({
    required this.name,
    required this.totalTeams,
    required this.teams,
    required this.matches,
  });
}

@HiveType(typeId: 1)
class MatchModel extends HiveObject {
  @HiveField(0)
  String team1;

  @HiveField(1)
  String team2;

  @HiveField(2)
  int team1Score;

  @HiveField(3)
  int team2Score;

  MatchModel({
    required this.team1,
    required this.team2,
    this.team1Score = 0,
    this.team2Score = 0,
  });
}
