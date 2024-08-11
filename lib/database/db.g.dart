// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TournamentModelAdapter extends TypeAdapter<TournamentModel> {
  @override
  final int typeId = 0;

  @override
  TournamentModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TournamentModel(
      name: fields[0] as String,
      totalTeams: fields[1] as int,
      teams: (fields[2] as List).cast<String>(),
      matches: (fields[3] as List).cast<MatchModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, TournamentModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.totalTeams)
      ..writeByte(2)
      ..write(obj.teams)
      ..writeByte(3)
      ..write(obj.matches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TournamentModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MatchModelAdapter extends TypeAdapter<MatchModel> {
  @override
  final int typeId = 1;

  @override
  MatchModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MatchModel(
      team1: fields[0] as String,
      team2: fields[1] as String,
      team1Score: fields[2] as int,
      team2Score: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MatchModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.team1)
      ..writeByte(1)
      ..write(obj.team2)
      ..writeByte(2)
      ..write(obj.team1Score)
      ..writeByte(3)
      ..write(obj.team2Score);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MatchModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
