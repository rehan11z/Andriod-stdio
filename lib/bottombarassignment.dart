import 'package:flutter/material.dart';
import 'package:hello_world/favourites.dart';
import 'package:hello_world/home.dart';
import 'package:hello_world/login.dart';
import 'package:hello_world/profile.dart';
import 'package:hello_world/screen.dart';

class bottombarscreen extends StatefulWidget {
  const bottombarscreen({super.key});

  @override
  State<bottombarscreen> createState() => _bottombarscreenState();
}

class _bottombarscreenState extends State<bottombarscreen> {
  int selectedindex = 0;
  List myscreens = [
    home(),
  favourite(),
    profile(),
    login(),
  ];

  ontapfunction (int index){
   setState(() {
     selectedindex = index;
   });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myscreens.elementAt(selectedindex),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedindex,
          selectedItemColor: Colors.cyanAccent,
          unselectedItemColor: Colors.cyanAccent,
     showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 20,
          elevation: 30,
          onTap: ontapfunction,
          items: [
            _buildAnimationItem(Icons.lock_open, 0),
            _buildAnimationItem(Icons.notifications_none, 1),
            _buildAnimationItem(Icons.delete_outline_sharp, 2),
            _buildAnimationItem(Icons.shopping_bag_outlined, 3)
          ],
        ),
      ),
    );
  }
  BottomNavigationBarItem _buildAnimationItem(IconData icon, int index){
    return BottomNavigationBarItem(
      label: "",
      icon: TweenAnimationBuilder<double>(tween: Tween(begin: 1.0,end: selectedindex == index? 1.4 : 1.0),
          duration: Duration(milliseconds: 400),curve: Curves.elasticOut,
          builder: (context,value,child)=> Transform.scale(
            scale: value,
            child: Container(
              decoration: BoxDecoration(
                color: selectedindex == index?Colors.cyanAccent : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                color: selectedindex == index?Colors.white:Colors.cyanAccent,
                size: 28,
              ),
            )
          )
      ),
    );
  }
  }
