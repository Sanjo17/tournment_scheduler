import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/screen_splash.dart';

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
        primarySwatch: Colors.blue,
      ),
      home:  const Screen_Splash(title: 'splash screen',),
    );
  }
}

