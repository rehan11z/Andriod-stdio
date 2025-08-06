import 'package:flutter/material.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 280,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text("NO BANK",
                  style: TextStyle(color: Colors.grey),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(top: 50),
              child: Image.asset("assets/image2.jpg"),
            ),
            Container(
              margin: EdgeInsets.only(top: 50,),
              child: Text("The First Bank\nwithout a bank",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("join the no bank experince\nentirly online, no jokes",
              style: TextStyle(fontSize: 16,color: Colors.grey),) ,
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 35,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black),
              child: Center(child: Text("Enter",
              style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withValues(alpha: 0.6),
            spreadRadius: 1,
            blurRadius: 2,
            offset:Offset(1, 1)
          )

        ]),),
      ),
    );
  }
}
