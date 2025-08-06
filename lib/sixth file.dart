import 'package:flutter/material.dart';

class sixth extends StatefulWidget {
  const sixth({super.key});

  @override
  State<sixth> createState() => _sixthState();
}

class _sixthState extends State<sixth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 140,
                  color: Colors.amber,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,
                      width: 140,
                      color: Colors.deepOrange,
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 140,
                  color: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  width: 140,
                  color: Colors.brown,
                ),
              )
            ],
          ),
          Row(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 140,
                width: 140,
                color: Colors.grey,
              ),
            ),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                    height: 140,
                    width: 140,
                    color: Colors.black,
                  ),
            )
          ]
          ),
        ],
      ),
    );
  }
}
