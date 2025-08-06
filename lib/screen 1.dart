import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 700,
          width: 350,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 300,
                child: Image.asset("assets/img_1.png"),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Log In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:30),),
                    Text("Please Sign in to continue"),
                    SizedBox(height: 40,),
                    TextField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(width: 10),

                        ),
                        enabledBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.grey,width: 0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.grey,width: 0),
                        ),
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                          EdgeInsets.only(left: 15,top:11,bottom: 11,right: 15),
                        hintText: "Username",
                        prefixIcon: Icon(Icons.person_outline_sharp),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        hintStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          borderSide: BorderSide(width: 10),
                        ),
                        enabledBorder:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.black26)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                          EdgeInsets.only(left: 15,top: 11,bottom: 11,right: 15),
                        hintText: "...............",
                        prefixIcon: Icon(Icons.lock_outline),
                      ),
                    ),
                    SizedBox(height: 25,),
                    Center(
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 150,vertical: 16),
                          ),
                        child: Text('Sign in'),
                      ),
                    ),
                    SizedBox(height: 20,),
                    RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: 'Already have an account'),
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)
                            )
                          ]
                        ))
                  ],
                ),
              ),
            ],
          ),

          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(30),

          ),
        ),
      ),
    );
  }
}
