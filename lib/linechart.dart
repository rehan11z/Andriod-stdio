import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
class graph extends StatefulWidget {
  const graph({super.key});

  @override
  State<graph> createState() => _graphState();
}

class _graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph 1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.blueGrey,
      ),
body: Center(
  child:SizedBox(
        height: 300,
        width: 350,
  child: LineChart(
    LineChartData(
      minX: 2010,
      maxX: 2018,
      minY: 20,
      maxY: 80,
      titlesData: FlTitlesData(
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
          ),
        ),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value,meta){
              return Text(
                value.toInt().toString(),
                style: TextStyle(fontSize: 10),
              );
            }
          )
        )
      ),
      gridData: FlGridData(show: true),
      borderData: FlBorderData(show: true),
      lineBarsData: [
        LineChartBarData(
          isCurved: false,
          spots: [
            FlSpot(2010, 20),
            FlSpot(2012, 40),
            FlSpot(2013, 40),
            FlSpot(2014, 50),
            FlSpot(2015, 40),
            FlSpot(2016, 55),
            FlSpot(2017, 65),
            FlSpot(2018, 72),
          ],
          barWidth: 4,
          color: Colors.blueAccent,
          dotData: FlDotData(show: true)
        )
      ]
    )
  ),
),
)
    );
  }
}
