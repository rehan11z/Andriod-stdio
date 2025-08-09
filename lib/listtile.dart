import 'package:flutter/material.dart';

class listtile extends StatefulWidget {
  const listtile({super.key});

  @override
  State<listtile> createState() => _listtileState();
}

class _listtileState extends State<listtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Stack(
        children: [
          Container(
            height: 900,
            width: 400,
            color: Colors.white,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70,left: 30),
                child:
                Text("Wattsapp",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
              ),

              Container(
                margin: EdgeInsets.only(top: 70,left: 160),
                child: Icon(Icons.search),
              ),
              Container(
                margin: EdgeInsets.only(top: 70,left: 15),
                child: Icon(Icons.more_vert),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                child: ListTile(
                  leading: Image.asset("assets/image123.png",),
                  title: Text("Ali",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("How are you"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Bilal",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("i'm coming"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Ahmed",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Well Come"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Fahad",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Wherre are you going"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Nouman",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Fine"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Hassan",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Account run"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Rehan",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Assalam alikum"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ListTile(
                  leading: Image.asset("assets/image123.png"),
                  title: Text("Gull",style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("hlo"),
                ),
              ),
            ],
          )
        ],
      )
    );
  }
}
