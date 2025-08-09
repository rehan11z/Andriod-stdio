import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  bool showPlanetProgress = true;
  bool switch1=false;
  bool switch2 =true;
  bool checkbox1 =false;
  bool checkbox2 =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(
      height:900,
      width: 400,
      child:Image(image: AssetImage("assets/splash.png"),
      fit: BoxFit.cover,) ,
      ),
    Row(
      children: [
        Container(
          height: 140,
          width: 392,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(30)
          ),
          child: 
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Image(image: AssetImage("assets/arrow.png")),
              ),
              Container(
                margin: EdgeInsets.only(left: 50,top: 40),
                child: Text("My Profile",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              )
            ],
          ),
        )
      ],
    ),
    Container(
      margin:EdgeInsets.only(top: 180,left: 20,right: 20),
      height: 120,
      width: 392,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(30)
      ),
    ),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 410,left: 35),
          child: CircleAvatar(
            radius:45,
            backgroundColor: Colors.transparent,
            child: ClipOval(
              child: Image.asset("assets/image123.png",
              width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 220,left: 20),
          child: Column(
            children: [
              Text("Arthur Dent",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
              Text("Space adventurer",style: TextStyle(color: Colors.white,fontSize: 11),),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(bottom: 460,left: 90),
            child: Icon(Icons.edit_outlined,color: Colors.white,))
      ],
    ),
    Container(
      margin: EdgeInsets.only(top: 340,left: 20,right: 20),
      height: 550,
      width: 392,
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(top: 384,left: 90),
            child: Text("Show planetry progress",style: TextStyle(color: Colors.white,),)),
      ],
    ),
    Container(
      margin: EdgeInsets.only(top: 370,left: 30),
      child: Switch(
        value: showPlanetProgress,
        activeColor: Colors.cyan,
      onChanged: (val){
          setState(() {
            showPlanetProgress = val;
          });
      },
      ),
    ),
Column(
  children: [
    Transform.rotate(angle: 3.14/2),
    Container(
      margin:EdgeInsets.only(top: 430,left: 60) ,
      child: new  CircularPercentIndicator(
          radius: 130,
        lineWidth: 20,
          percent: 0.871,
        center: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 67,left: 50),
              height: 50,
              width: 150,
              child: Text("Perssonal Progress",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight:FontWeight.bold ),),
            ),
            Container(
              height: 65,
              width: 140,
              child: Text("87.1%",style: TextStyle(color: Colors.cyanAccent,fontSize: 50,fontWeight: FontWeight.bold),),
            )
          ],
        ),
      linearGradient: LinearGradient(
        colors: [
      Color(0xFF00E5E5),
      Color(0xFFE961FF),
      Colors.blueAccent,
        ],
      begin: Alignment.topLeft,
        end: Alignment.bottomRight
      ),
        backgroundColor: Colors.grey.shade800,
        startAngle: 90,
      ),
    ),
  ],
),
Row(
  children: [
    Container(
      margin: EdgeInsets.only(top: 700,left: 60),
      child: Checkbox(
        value: checkbox1,
        onChanged: (value){
          setState(() {
            checkbox1=value!;
          });
        },
        activeColor: Colors.blueAccent,
      ),
    ),
    Container(
        margin: EdgeInsets.only(top: 700),
        child: Text("Show me in Planet Rating",style: TextStyle(color: Colors.white),))
  ],
),
    Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 740,left: 60),
          child: Checkbox(
            value: checkbox2,
            onChanged: (value){
          setState(() {
            checkbox2=value!;
          });
            },
            activeColor: Colors.blueAccent,
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 740),
            child: Text("Notifications",style: TextStyle(color: Colors.white),))
      ],
    )
  ],
    )
    );
  }
}
