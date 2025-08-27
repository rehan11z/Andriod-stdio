import 'package:flutter/material.dart';

class courosel extends StatefulWidget {
  const courosel({super.key});

  @override
  State<courosel> createState() => _couroselState();
}

class _couroselState extends State<courosel> {
  final List<String> imgList = [
    'assets/splash.png',
    'assets/man23.png',
    'assets/splash2.png',
    'assets/musical.png',
    'assets/my_image.png'
  ];
  int currentindex = 0;
  final PageController _pageController = PageController(viewportFraction:0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(title: Text("Carsonel Slider  Example "),),
   body:
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 200,
  child: PageView.builder(
  controller: _pageController,
  itemCount: imgList.length,
  onPageChanged: (index){
    setState(() {
      currentindex = index;
    });
  },
  itemBuilder: (context,index){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(imgList[index]),
        fit: BoxFit.cover
        )
      ),
    );
  },
  ),
  )
  ],
      )

    );
  }
}
