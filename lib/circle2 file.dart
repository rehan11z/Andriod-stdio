import 'package:flutter/material.dart';
import 'package:hello_world/screen%201.dart';

class circle2 extends StatefulWidget {
  const circle2({super.key});

  @override
  State<circle2> createState() => _circle2State();
}

class _circle2State extends State<circle2> {

  bool _obscureText =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(

          child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 250,
                  child: Image.asset("assets/image11.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text('Register',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 159),
                      child: Text("Please Register to log in"),
                    ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: TextField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.emailAddress,
                        decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            borderSide: BorderSide(width: 10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey,width: 0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey)
                          ),
                              errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Username",
                          prefixIcon: Icon(Icons.person_outline_sharp),
                        ),
                      ),
                    ),
                    SizedBox(height: 0,),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: TextField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            borderSide: BorderSide(width: 10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Mobile Number",
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.number,
                        obscureText: _obscureText,
                        decoration: new InputDecoration(
                          hintStyle: TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            borderSide: BorderSide(width: 10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: "Password",
                          prefixIcon: Icon(Icons.lock_outline),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText? Icons.visibility_off: Icons.visibility,
                              color: Colors.black,
                            ),
                            onPressed: (){
                              setState(() {
                                _obscureText =!_obscureText;
                              });
                            },
                          )
                        ),
                      ),
                    ),
                   SizedBox(height: 30,),
                   Container(
                     child: ElevatedButton(
                         onPressed: (){
                           Navigator.of(context).push(MaterialPageRoute(builder: (context)=> screen1()));
                         },
                         style:  ElevatedButton.styleFrom(
                           backgroundColor: Colors.blueAccent,
                           foregroundColor: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                             padding: EdgeInsets.symmetric(horizontal: 140,vertical: 16),
                         ),
                       child: Text('Sign Up'),
                   ),
                   ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> screen1()));
                      },
                      child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: [
                              TextSpan(text: 'Already have an account?'),
                              TextSpan(text: 'Sign in',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent)),
                            ]
                          )),
                    )
                ],
                ),
              )
            ],

          ),
        ),
      )
      );

  }
}
