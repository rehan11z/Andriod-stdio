import 'package:flutter/material.dart';

class third extends StatefulWidget {
  const third({super.key});

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        actions: [
          SizedBox(width: 10,),
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.more_vert),
        ],
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: 300,
          width: 300,
          color: Colors.brown,
          child: Text("Hi!",
            style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
