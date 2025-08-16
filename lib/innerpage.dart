import 'package:flutter/material.dart';
import 'package:hello_world/favourites.dart';
import 'dart:math';
import 'package:hello_world/main.dart';

class innerpage extends StatefulWidget {
  const innerpage({super.key});

  @override
  State<innerpage> createState() => _innerpageState();
}

class _innerpageState extends State<innerpage> {
  bool isfavouriteFav = false;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: SingleChildScrollView(
child: Stack(
  children: [
    Container(
      height: 1000,
    width: 400,
    child: Image(image: AssetImage("assets/splash.png"),
    fit: BoxFit.cover,),
    ),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 80,left: 40),
          child: Image(image: AssetImage("assets/arrow.png"),
          width: 70,
          height: 70,),
        ),
       Positioned(
         top: 200,
         right: 60,
         child: Container(
           margin: EdgeInsets.only(top: 90,left: 180),
           child: IconButton(
             icon: Icon(
               size: 35,
               isfavouriteFav?
                   Icons.favorite:Icons.favorite_border,
               color: Colors.white,
             ),
             onPressed: (){
               setState(() {
                 isfavouriteFav =! isfavouriteFav;
               });
             },
           ),
         ),
       )
      ],
    ),
    Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 80,left: 150),
        child: Text("Mars",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
      ),
      margin: EdgeInsets.only(top: 300),
      height: 700,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(40),
    ),
    ),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 450,left: 50),
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/lock.png"),
              ),
              Container(
                child: Text("Mass",style: TextStyle(color: Colors.white),),

              ),
              Container(
                child: Text("10^24",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("5.97",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 450,left: 70),
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/magnet.png"),
              ),
              Container(
                child: Text("Gravity",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("(m/s2)",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("9.8",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 25 ),),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 450,left: 60),
          child: Column(
            children: [
              Container(
                child: Image.asset("assets/sun.png"),
              ),
              Container(
                child: Text("Day",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("(hours)",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child:Text("24",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),) ,)
            ],
          ),
        ),
      ],
    ),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 600,left: 40),
          child: 
          Column(
            children: [
              Container(
                child: Image(image: AssetImage("assets/velocity.png"))
              ),
              Container(
                child: Text("Esc.Velocity",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("(km/s)",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("11.2",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 600,left: 50),
          child: Column(
            children: [
              Container(
                child: Image.asset('assets/heat.png'),
              ),
              Container(
                child: Text("Mean",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("Temp(C)",style: TextStyle(color: Colors.white),),
              ),
              Container(
                child: Text("15",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 600,left: 40),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    child: Image(image: AssetImage("assets/meter.png")),
                  ),
                  Container(
                  child: Text("Distance from\nSun(106km)",style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    child: Text("5.97",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
    Container(
      margin: EdgeInsets.only(top: 760,left: 110),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        gradient: const LinearGradient(
          colors: [Color(0xFFE961FF),Color(0xFF72A5F2),Color(0xFF00E5E5)],
          begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
        ),
      ),
      child: TextButton(
          onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>favourite())
        );
      },
          child: Text("Visit",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),))
    ),
    Container(
      margin: EdgeInsets.only(top: 235,left: 120),
      child: Image(image: AssetImage("assets/planet.png")),
    )
  ],
)
      ),
    );
  }
}
