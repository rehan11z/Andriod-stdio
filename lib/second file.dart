import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",
        style: TextStyle(fontWeight: FontWeight.bold),),
      actions: [
        SizedBox(width: 10,),
        Icon(Icons.heart_broken_rounded),
        SizedBox(width: 10,),
        Icon(Icons.message),
        SizedBox(width: 12,),
      ],),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 250,
          width: 250,
          color: Colors.blueGrey,
          child: Text("Instagram!",
          style: TextStyle(fontSize: 25),),

        )
      ),
    );
  }
}
