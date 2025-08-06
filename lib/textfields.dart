import 'dart:ui';

import 'package:flutter/material.dart';


class mytextfield extends StatefulWidget {
  const mytextfield({super.key});

  @override
  State<mytextfield> createState() => _mytextfieldState();
}

class _mytextfieldState extends State<mytextfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.indigoAccent, width: 3)
          ),
          child: Stack(
            children: [
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/my_image.png',
                      ),
                  fit: BoxFit.cover
                  )
                ),
                child: BackdropFilter(
                  filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: new Container(
                    decoration: new BoxDecoration(color: Colors.white.withOpacity(0.2)),
                  ),
                ),
              ),
              Container(
                height: 300,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Log In', style: TextStyle(color: Colors.white, fontSize: 20),),
                    SizedBox(height: 20,),
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide(width: 10,)
                          ),
                          // border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green, width: 0.0),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.blueAccent, width: 0.0),
                          ),

                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Please enter email"),
                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.text,
                      decoration: new InputDecoration(
                        hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.green, width: 0.0),
                          ),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueAccent, width: 0.0),
                    ),
                          // enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding:
                          EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                          hintText: "Please enter password", ),

                    ),
                    
                    ElevatedButton(onPressed: (){},
                        child: Text('Sign In'))


                  ],
                ),
                // color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
