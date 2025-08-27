import 'package:flutter/material.dart';
import 'package:hello_world/favourites.dart';
import 'package:hello_world/innerpage.dart';
import 'package:hello_world/home.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
drawer: Drawer(
  child: ListView(
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Text("Menu",style: TextStyle(color: Colors.blueAccent,fontSize: 24),),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("Home"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text("Favourite"),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text("Info"),
        onTap: () {
          Navigator.pop(context);
        },
      )
    ],
  ),

),
        body: Stack(
            children: [
              Container(
                height: 900,
                width: 400,
                child: Image(image: AssetImage("assets/splash.png"),fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 90,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    Container(
                        width: 70,
                        child: Image(image: AssetImage("assets/menu.png"))),
                    Container(
                        width: 250,
                        margin: EdgeInsets.only(top: 20,),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                // margin: EdgeInsets.only(left: 20),
                                child: Text("Milky way",
                                  style: TextStyle(color: Colors.grey),),
                              ),
                            ),
                            Container(
                                alignment: Alignment.center,
                                child: Text("Solar Energy",style: TextStyle(color: Colors.white,fontSize: 25),)),
                          ],
                        )
                    ),

                    Container(
                        width: 70,
                        child: Image(image: AssetImage("assets/profile.png"))),
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.only(top:200,left: 10,right: 10),
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(40),
                ),
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 20,top: 10),
                  child: Text("Planets of the Day",
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),),
                ),
              ),
              Row(
                  children: [
                    Container(
                      width: 80,
                      margin: EdgeInsets.only(bottom: 300,left: 10),
                      child: Image(image: AssetImage("assets/Mars12.png"),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      margin: EdgeInsets.only(top: 250,right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mars",
                            style: TextStyle(
                              color: Colors.cyanAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text("Mars is the fourth planet from the Sun and \n"
                                " the second-smallest planet in the Solar\n"
                                " System, only being larger than Mercury.\n In the English language, Mars is named\n for the Roman god of war.",
                              style: TextStyle(color: Colors.white),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 140),
                            child: Row(
                              children: [
                                TextButton(onPressed: (){
                                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Oppning Mars details"),
                                    duration: Duration(seconds: 5),
                                    backgroundColor: Colors.blueAccent,
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)
                                    ),
                                  ),
                                  );
                                  Future.delayed(Duration(milliseconds: 500), () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => innerpage()),
                                    );
                                  });
                                },
                                    child: Text("Details",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                                Icon(Icons.arrow_forward,color: Colors.cyanAccent,)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ]
              ),
              Container(
                margin: EdgeInsets.only(top: 470,left: 10,right: 10),
                height: 320,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(40)
                ),
                child:
                Container(
                  margin: EdgeInsets.only(left: 20,top: 30),
                  child: Text("Solar System",
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
              ),
              SizedBox(width: 200,),
              Container(
                margin: EdgeInsets.only(top: 530,left: 25),
                child: Text("The Solar System[c] is the gravitationally bound\n "
                    "system of the Sun and the objects that orbit it. It\n"
                    " formed 4.6 billion years ago from the gravitational \n"
                    "collapse of a giant interstellar molecular cloud.\n"
                    " The vast majority (99.86%) of the system's mass \n"
                    "is in the Sun, with most of the remaining mass \n"
                    "contained in the planet Jupiter. The four inner \n"
                    "system planets—Mercury, Venus, Earth and Mars—are\n"
                    " terrestrial planets, being composed primarily \n"
                    "of rock and metal. The four giant planets of the \nouter system are substantially larger and more\n"
                    " massive than the terrestrials. ",
                  style: TextStyle(color: Colors.white),),
              )
            ]
        )
    );

  }
}
