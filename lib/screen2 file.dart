import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all (30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 100,
                  child: Text("NoBank"),
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                  child: Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/img.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  height: 150,
                  width: 150,
                  child: Text("The First Bank\nwithout a bank",
                  style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
                  alignment: Alignment.center,
                  color: Colors.white,

                ),
              ),
              Container(
                height: 100,
                width: 150,
                child: Text("join the no bank experince,\nentirlyonline,no jokes",
                style: TextStyle(fontSize: 14),) ,
              color: Colors.white,
              ),
              Padding(
                padding: const EdgeInsets.all(70.0),
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text("Enter",style: TextStyle(color: Colors.white,fontSize: 20,),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
