import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final List<Map<String,String>> onboardingData = [
    {
      "image" : "assets/images/onboarding1.png",
      "title" : "Wellcome to our App"
    },
    {
      "image" : "assets/images/onboarding2.png",
      "title" : "Fast and Secure Service "
    },
    {
      "image" : "assets/images/onboarding3.png",
      "title" : "Get Started Today"
    }
  ];
  final controller = PageController();
  @override
  void dispose (){
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 100),
            color: Colors.red,
            child: Center(
              child: Image(image: AssetImage("assets/onboarding1.png",),fit: BoxFit.cover,)),
          ),
          Container(
            color: Colors.blueAccent,
            child: Center(
              child:Image(image: AssetImage("assets/onboarding2.png"),fit: BoxFit.cover,)),
          ),
          Container(
            color: Colors.grey,
            child: Center(child: Image(image: AssetImage("assets/onboarding3.jpg"),
            fit: BoxFit.cover,)),
          )
        ],
      ),
      bottomSheet: Container(
        alignment: Alignment.centerLeft,
        height: 100,
        child: Row(
          children: [
            TextButton(
              onPressed: ()
               =>controller.jumpToPage(2),
              child: Text("Skip"),
            ),
            Container(
              margin: EdgeInsets.only(left: 80),
              child: Center(
                child: SmoothPageIndicator(
                  controller:controller,
                  count: 3,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 90),
              child: TextButton(
                      onPressed: () =>controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn),
                    child: Text("Next"),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
