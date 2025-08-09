import 'package:flutter/material.dart';
import 'package:hello_world/profile.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  bool isMercuryFav = false;
  bool isVenusFav = false;
  bool isEarthFav = false;
  bool isMars = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Container(
              margin: EdgeInsets.only(top: 30,),
              height: 90,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(40)
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    width: 70,
                    child: Image(image: AssetImage("assets/menu.png")),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40),
                    alignment: Alignment.center,
                    child: Text("Favourite",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 60),
                    child:
                      IconButton(
                        icon: Icon(Icons.person_outline_sharp,color: Colors.white,size: 30,),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=> const profile()),
                          );
                        },
                      )
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 160,left: 10,right: 10),
              height: 150,
              width: 450,
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 450,),
                  width: 90,
                  child: Image.asset("assets/mercury1.png"),
                ),

                Container(
                  margin: EdgeInsets.only(top: 180,right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Mercury",style: TextStyle(color: Colors.cyanAccent,fontSize: 20.floorToDouble(),fontWeight: FontWeight.bold),),
                   Align(
                     alignment: Alignment.center,
                     child: Text("Mercury is the smallest planet in\n theSolar System and the closest \nto the Sun.",style: TextStyle(color: Colors.white,),),
                   ),
                      Container(
                        margin: EdgeInsets.only(left: 170,),
                      child: Row(
                        children: [
                          Text("Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                          Icon(Icons.arrow_forward,color: Colors.cyanAccent,)
                        ],
                      ),
                      )
                    ],
                  ),
                )
                    ],
                  ),
            Positioned(
              top: 160,
              right: 30,
              child: IconButton(
                icon: Icon(
                  isMercuryFav?
                      Icons.favorite:Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: (){
                  setState(() {
                    isMercuryFav = !
                    isMercuryFav;
                  });
                },
              )
            ),
            Container(
            margin: EdgeInsets.only(top: 330,left: 10,right: 10),
              height: 150,
              width: 390,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 110),
                  width: 90,
                  child:Image(image: AssetImage("assets/venus.png")),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Venus",
                          style: TextStyle(color: Colors.cyanAccent,fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Text("Venus is the second planet from the \nSun and is Earth's closest planetary\n neighbor.",
                        style: TextStyle(color: Colors.white),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 170),
                        child: Row(
                          children: [
                            Text("Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward,color: Colors.cyanAccent,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 330,
              right: 30,
              child: IconButton(
                icon: Icon(
                  isVenusFav?
                      Icons.favorite:Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed: (){
                  setState(() {
                    isVenusFav =!isVenusFav;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 520,left: 10,right: 10),
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 250),
                  width: 90,
                  child: Image(image: AssetImage("assets/Earth1.png")),
                ),
                Container(
                  margin: EdgeInsets.only(top: 300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Earth",style: TextStyle(color: Colors.cyanAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                      Container(
                        child: Text("Earth is an ellipsoid with a \ncircumference of about 40,000 km.\n It is the densest planet in the Solar\n System.",
                        style: TextStyle(color: Colors.white),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 170),
                        child: Row(
                          children: [
                            Text("Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                            Icon(Icons.arrow_forward,color: Colors.cyanAccent,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top:520 ,
              right: 30,
              child: IconButton(
                icon: Icon(
                  isEarthFav?
                      Icons.favorite :Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed:(){
                  setState(() {
                    isEarthFav =! isEarthFav;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 700,left: 10,right: 10),
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 600),
                  width: 90,
                  child: Image(image: AssetImage("assets/Mars12.png")),
                ),
                Container(
                  margin: EdgeInsets.only(top: 650),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mars",style: TextStyle(color: Colors.cyanAccent,fontSize: 20,fontWeight: FontWeight.bold),),
                      Container(
                        child: Text("Mars is the fourth planet from the\n Sun and the second-smallest planet /\nin the Solar System",
                        style: TextStyle(color: Colors.white),),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 170),
                        child: Row(
                          children: [
                            Text("Details",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            Icon(Icons.arrow_forward,color: Colors.cyanAccent,)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 720,
              right: 30,
              child: IconButton(
                icon: Icon(
                  isMars?
                      Icons.favorite: Icons.favorite_border,
                  color: Colors.white,
                ),
                onPressed:(){
                  setState(() {
                    isMars =! isMars;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
