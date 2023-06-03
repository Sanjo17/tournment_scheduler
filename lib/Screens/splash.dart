import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/selectsport.dart';

// ignore: camel_case_types
class Screen_Splash extends StatefulWidget {
  const Screen_Splash({super.key, required String title});

  @override
  State<Screen_Splash> createState() => _Screen_SplashState();
}

class _Screen_SplashState extends State<Screen_Splash> {
  @override
  void initState() {
    delay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          //backgroundColor: Colors.orange,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/SPLASH.png"),
                  fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }

  Future delay() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const Screen_Selectsport(),
      ),
    );
  }
}
