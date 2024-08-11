import 'package:hive/hive.dart';

class Tournament{

  void addtournament(var value)async{
      final tBox =   await Hive.openBox("tournament");
      var data = tBox.add(value);

  }
}