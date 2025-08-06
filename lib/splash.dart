import 'dart:async';


import 'package:flutter/material.dart';
import 'package:hello_world/Listview.dart';
import 'package:hello_world/login.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    Timer (Duration(seconds: 10), () {
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context)=> login()),
    );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 900,
              width: 400,
              child: Image(image: AssetImage("assets/splash.png"),
                fit: BoxFit.cover,
            )
        ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Center(child: Image(image: AssetImage("assets/splash2.png"))),
                ),
                Container(
                  child: Image(image: AssetImage("assets/splash3.png")) ,
                )
              ],
            )
        ],
      ),
    ),
    );
  }
}

