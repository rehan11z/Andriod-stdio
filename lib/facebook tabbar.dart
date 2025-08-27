import 'package:flutter/material.dart';

class facebook extends StatefulWidget {
  const facebook({super.key});

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {
  int selectedindex = 0;
final List<Widget> screens = [

];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("facebook",
              style:TextStyle(color: Colors.blueAccent,fontSize: 25,fontWeight: FontWeight.bold),),
            backgroundColor: Colors.black26,
            bottom: TabBar(
              indicatorColor:Colors.blueAccent,
              indicatorWeight: 3,
              labelColor: Colors.blueAccent,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(icon: Icon(
                    Icons.home_filled),
                ),
               Tab(icon: Icon(
                   Icons.video_library),
               ),
                Tab(icon: Icon(
                    Icons.group_outlined),
                ),
                Tab(icon: Icon(
                    Icons.store),
                ),
                Tab(icon: Icon(
                    Icons.notifications_none),
                ),
                Tab(icon: Icon(
                    Icons.person),
                  ),
              ],
            ),
          ),
body:
          TabBarView(
              children:[
              Center(
                child: Text("Home Screen",
                  style:
                  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
                Center(
                  child: Text("Reels Screen",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text("Groups",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
                Center(
                  child: Text("Market Place",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text("Notifications",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
                Center(
                  child: Text("Profile",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                )
              ]
            ),
          ),
    );
  }
}
