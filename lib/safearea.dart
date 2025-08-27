import 'package:flutter/material.dart';

class safearea extends StatefulWidget {
  const safearea({super.key});

  @override
  State<safearea> createState() => _safeareaState();
}

class _safeareaState extends State<safearea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
          children: [
            Container(
              height: 250,
              width: 400,
              color: Colors.blueAccent,
              alignment: Alignment.center,
              child: Text("Block 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
         Container(
           height: 230,
           width: 400,
           color: Colors.black,
           child: Row(
             children: [
               Expanded(
                   child: Container(
                 color: Colors.pinkAccent,
                 child: Text("Block"),
               )),
               Expanded(
                   child: Container(
                 color:Colors.orange,
                 child: Text("Block"),
               ))
             ],
           )
         ),
            Flexible(
              flex: 2,
                child: Container(
            height: 300,
          width: 400,
        color: Colors.indigo,
          alignment: Alignment.center,
            child: Text("Flexible",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ),
          ]
      ),
      )
      )
    );
  }
}
