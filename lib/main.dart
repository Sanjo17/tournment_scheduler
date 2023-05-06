import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "tournment app",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Screen_Splash(
        title: 'splash Screen',
      ),
    );
  }
}
