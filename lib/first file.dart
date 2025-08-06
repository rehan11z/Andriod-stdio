import 'package:flutter/material.dart';

class InnerPage extends StatefulWidget {
  const InnerPage({super.key});

  @override
  State<InnerPage> createState() => _InnerPageState();
}

class _InnerPageState extends State<InnerPage> {
  Color _favIconColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    // Screen size
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Scaffold(
      body: Stack(
        children: [
          // 🌍 Background Image
          SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Image.asset(
              "assets/earth.png",
              fit: BoxFit.cover,
            ),
          ),

          // 🔙 Arrow + ❤️ Favorite
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back Arrow
                Image.asset(
                  "assets/arrow.png",
                  width: 50,
                  height: 50,
                ),

                // Favorite Button
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 40,
                  color: _favIconColor,
                  tooltip: 'Add to favourite',
                  onPressed: () {
                    setState(() {
                      _favIconColor = _favIconColor == Colors.grey
                          ? Colors.red
                          : Colors.white;
                    });
                  },
                ),
              ],
            ),
          ),

          // 🟦 Bottom Container with Info
          Positioned(
            top: screenHeight * 0.4, // 40% image, 60% info
            child: Container(
              width: screenWidth,
              height: screenHeight * 0.6,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Earth",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  _infoRow("Mass (10²⁴kg)", "5.97"),
                  _infoRow("Gravity (m/s²)", "9.8"),
                  _infoRow("Day (hours)", "24"),
                  _infoRow("Esc. Velocity (km/s)", "11.2"),
                  _infoRow("Mean Temp (°C)", "15"),
                  _infoRow("Distance from Sun (10⁶ km)", "5.97"),

                  Spacer(),

                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Visit button logic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                      child: Text("Visit", style: TextStyle(fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(color: Colors.white70, fontSize: 16)),
          Text(value, style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}