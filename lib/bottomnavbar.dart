import 'package:flutter/material.dart';
import 'package:hello_world/favourites.dart';
import 'package:hello_world/home.dart';
import 'package:hello_world/innerpage.dart';
import 'package:hello_world/listtile.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/profile.dart';


class bottombar extends StatefulWidget {
  const bottombar({super.key});

  @override
  State<bottombar> createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {

  int selectedindex = 0;
  List myscreens = [
  home(),
  favourite(),
  profile(),
  ];

  ontapfuction(int index){
    setState(() {
      selectedindex = index;
      print(index.toString());
      print(selectedindex.toString());
      print('working');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: myscreens.elementAt(selectedindex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      child :BottomNavigationBar(
        currentIndex: selectedindex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.black45,
          selectedIconTheme: IconThemeData(color: Colors.cyanAccent,size: 30),
          unselectedIconTheme: IconThemeData(color: Colors.grey,size: 26),
        selectedLabelStyle: TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(color: Colors.grey,
          fontWeight: FontWeight.bold),
          iconSize: 20,
          elevation: 50,
          onTap: ontapfuction,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.language),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ]),
      )
    );
  }
}
