import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class circularindicator extends StatefulWidget {
  const circularindicator({super.key});

  @override
  State<circularindicator> createState() => _circularindicatorState();
}

class _circularindicatorState extends State<circularindicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("facebook"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: CircularProgressIndicator(
          strokeWidth: 5,
          color: Colors.white,
          backgroundColor: Colors.grey.shade800,
        ),
      ),
    );
  }
}
