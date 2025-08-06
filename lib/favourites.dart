import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 900,
              width: 400,
              child: Image(image: AssetImage("assets/splash.png"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
