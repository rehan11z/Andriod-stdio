import 'package:flutter/material.dart';
import 'package:hello_world/home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formKey = new GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
     key: _formKey,
      child: Scaffold(
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
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    child: Center(child: Image(image: AssetImage("assets/Vector (1).png"))),
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:300),
                child: Container(
                  height: 600,
                  width: 400,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(40)
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sign in",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                      Padding(
                        padding: const EdgeInsets.only(top: 35,right: 40),
                        child: TextFormField(
                          controller: email,
                          validator: (value){
                            if (value == null ||value.isEmpty){
                              return 'Please Enter Email';
                            }else if (!value.contains ('@') || !value.contains('.')) {
                              return 'Enteer valid Email';
                            }
return null;
                          },
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.black,
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(width: 20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Please Enter Your Email",
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(right: 35),
                        child: TextFormField(
                          controller: password,
                          validator : (value){
                            if (value == null || value.isEmpty){
                              return 'Please enter passord';
                            }else if(value.contains('@')){
                              return 'Please don\'t use the @ char.';}
                           return null;
                          },

                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            filled: true,
                            fillColor: Colors.black,
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(width: 30),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Password",
                        ),
                        ),
                      ),
                      TextButton(onPressed: (){

                      },
                          child: const Text("Forgot Passoword?",style: TextStyle(fontSize: 20,color: Colors.cyanAccent),
                          ),
                      ),
          Container(
            width: 340,
            height: 50,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: [Color(0xFFE961FF),Color(0xFF72A5F2),Color(0xFF00E5E5)],
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                blurRadius: 6,
                  offset: Offset(0,3),
                )
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> home()),
                );
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Sign',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
                      SizedBox(height: 35,width: 10,),
                      Container(
                        child: Row(
                          children: [
                            Expanded(child: Divider(color: Colors.grey,)),
                            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text("or Sign in  using",style: TextStyle(color: Colors.grey),)
                              ),
                            Expanded(child: Divider(color: Colors.grey,))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: Image(image: AssetImage("assets/Social.png")) ,
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: RichText(
                            text:TextSpan(
                              text: "Dont't have an account?",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),
                              children: [
                                TextSpan(
                                  text: "Sign up",
                                  style: TextStyle(color: Colors.cyanAccent,fontWeight: FontWeight.bold),
                                ),
                              ],
                            ) ),
                      ),

                  ],
                ),
              ),
            ),
            ),
        ],
      ),
      ),
            ),
            );
  }
}
