import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tournment_scheduler/Screens/splash.dart';

void main() async{
  await Hive.initFlutter();
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
