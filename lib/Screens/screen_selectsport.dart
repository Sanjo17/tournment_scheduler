import 'package:flutter/material.dart';
import 'package:tournment_scheduler/Screens/screen_chose.dart';

// ignore: camel_case_types
class Screen_Selectsport extends StatelessWidget {
  const Screen_Selectsport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text("tourment app"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: const Text(
              "SELECT SPORT",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
               
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 300),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/SPLASH1.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 161,left: 161,top:20,bottom: 20),
            color: Colors.blueGrey,
            child: ElevatedButton(
              
              onPressed: () {
                gotochose(context);
              },
              child: const Text("select"),
            ),
          ),
        ],
      ),
    );
  }
  gotochose(context){
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Screen_chose(),),);
  }
}
