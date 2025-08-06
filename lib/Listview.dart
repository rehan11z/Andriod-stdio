import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 400,
        color: Colors.grey,
        child: ListView(
          children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 20),

            height: 90,
          width: 60,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(0, 6),
              )
            ],
          ),
        ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20, right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 6),
                  )
                ],
              ),
            ),
            Container(
              height: 90,
              width: 50,
              margin: EdgeInsets.only(top: 20,right: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.cyanAccent,
                borderRadius: BorderRadius.circular(25),
                boxShadow:[ BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 6),
                ),
              ],
              ),
            )
          ]
        ),
      ),
    );
  }
}
