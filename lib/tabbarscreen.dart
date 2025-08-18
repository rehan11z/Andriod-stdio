import 'package:flutter/material.dart';

class tabbarscreen extends StatefulWidget {
  const tabbarscreen({super.key});

  @override
  State<tabbarscreen> createState() => _tabbarscreenState();
}
class _tabbarscreenState extends State<tabbarscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.orangeAccent,
        title: Text("Tab bar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),) ,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 12,right: 12,top: 10),
              height: 47,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(40),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.green
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: "Place Bid ",),
                  Tab(text: "Buy Now ",),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
