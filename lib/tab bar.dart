import 'package:flutter/material.dart';
import 'package:hello_world/home.dart';
import 'package:hello_world/innerpage.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/profile.dart';

class tabbar extends StatefulWidget {
  const tabbar({super.key});

  @override
  State<tabbar> createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('T A B B A R',),
      ),
        body: Column(
          children: [
            TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home,
                      color: Colors.blueAccent,),
                  ),
                  Tab(
                    icon: Icon(Icons.person,color: Colors.blueAccent,),
                  ),
                  Tab(
                    icon: Icon(Icons.settings,color: Colors.blueAccent,),
                  )
                ]
            ),
           Expanded(
           child: TabBarView(children: [
              login(),
             profile(),
             innerpage()
            ])
           ),
          ],
        ),
      )
    );
  }
}
