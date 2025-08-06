import 'package:flutter/material.dart';

class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Container(
         height: 600,
          width: 320,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Text('Log In',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.brown,),),
              SizedBox(height: 150,),
              TextField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    borderSide: BorderSide(width: 10),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green,width: 0,),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueAccent,width: 0,),
                  ),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                    EdgeInsets.only(left: 15,top: 11,bottom: 11,right: 15),
                  hintText: "Username",
                prefixIcon:Icon(Icons.person_outline_sharp), ),

              ),
              SizedBox(height: 30,),
              TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.green,width: 0,),
                  ),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blueAccent,width: 0,),
                  ),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding:
                    EdgeInsets.only(left: 15,bottom: 11,top: 11,right: 15),
                  hintText: "Please eanter password"
                ),

              ),
              SizedBox(height: 100,),
              ElevatedButton(onPressed: (){},
                  child: Text('Sign In'))
            ],
          ),
        ),
     ),
    );
  }
}
