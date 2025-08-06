import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 280,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
