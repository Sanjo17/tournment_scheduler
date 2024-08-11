import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tournment_scheduler/Screens/splash.dart';

import 'database/db.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TournamentModelAdapter());
  Hive.registerAdapter(MatchModelAdapter());

  final tBox=   await Hive.openBox("tournament");
  final mBox = await Hive.openBox("matches");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "tournment app",
      theme: _appTheme(),
      home: const Screen_Splash(
        title: 'splash Screen',
      ),
    );
  }

  _appTheme() {
    ThemeData(
      primarySwatch: Colors.red,
    );
  }
}
