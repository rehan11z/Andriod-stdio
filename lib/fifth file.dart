import 'package:flutter/material.dart';

class fifth extends StatefulWidget {
  const fifth({super.key});

  @override
  State<fifth> createState() => _fifthState();
}

class _fifthState extends State<fifth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",
        style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          SizedBox(width: 30,),
          Icon(Icons.search),
        ],
      ),
    );
  }
}


