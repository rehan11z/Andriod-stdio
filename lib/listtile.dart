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
      resizeToAvoidBottomInset: true,
      body: Container(
            height: 1200,
            width: 400,
            color: Colors.white,
        child: Column(
        children: [
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
            Container(
              height: 50,
              width: 340,
              child: TextFormField(
                cursorColor: Colors.black,
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40,),
                borderSide: BorderSide(width: 20),
              ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: const BorderSide(color: Colors.black)
                  ),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: "search insight with Meta AI"
                ),
              ),
            ),
            Container(
              height: 900,
              width: 400,
            child: ListView(
              children: [
            Container(
              child: ListTile(
                leading: Image.asset("assets/image123.png",),
                title: Text("Saim Ayub",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("How are you"),
              ),
            ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Abdullah Shafiq",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("i'm coming"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Rizwan",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Well Come"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Hassan Nawaz",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Wherre are you going"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Rana Fahim",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Fine"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Muhmmad Amir",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Account run"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Imad Wasim",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("Assalam alikum"),
        ),
      ),
      Container(
        child: ListTile(
          leading: Image.asset("assets/image123.png"),
          title: Text("Salman Ali Aga",style: TextStyle(fontWeight: FontWeight.bold),),
          subtitle: Text("hlo"),
        ),
      ),
                Container(
                  child: ListTile(
                    leading: Image.asset("assets/image123.png"),
                    title: Text("Sufyan Muqim",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Cricket Club"),
                  ),
                ),
                Container(
                  child: ListTile(
                    leading: Image.asset("assets/image123.png"),
                    title: Text("Hassan Ali",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Cricket Club"),
                  ),
                ),
                Container(

                  child: ListTile(
                    leading: Image.asset("assets/image123.png"),
                    title: Text("Nasseem Sha",style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("Cricket Club"),
                  ),
                ),
              ],
            ),

          )
                ]
    ),
      )
    );
  }
}
