import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class graph2 extends StatefulWidget {
  const graph2({super.key});

  @override
  State<graph2> createState() => _graph2State();
}

class _graph2State extends State<graph2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graph",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
    child:Container(
        height: 300,
      width: 350,
      child:LineChart(
        LineChartData(
          minX: 0,
          maxX: 10,
          minY: 0,
          maxY: 10,
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(show: true),
          borderData: FlBorderData(show: true),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 3),
                FlSpot(2, 2),
                FlSpot(4, 6),
                FlSpot(6, 4),
                FlSpot(8, 10),
                FlSpot(10, 1),
              ],
              isCurved: true,
              color: Colors.red,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false)
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 6),
                FlSpot(2, 5),
                FlSpot(4, 7),
                FlSpot(6, 2),
                FlSpot(8, 6),
                FlSpot(10, 4),
              ],
              isCurved: true,
              color: Colors.yellow,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
            ),
            LineChartBarData(
              spots: [
                FlSpot(0, 1),
                FlSpot(2, 3),
                FlSpot(4, 2),
                FlSpot(6, 5),
                FlSpot(8, 4),
                FlSpot(10, 8),
              ],
              isCurved: true,
              color: Colors.cyanAccent,
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: FlDotData(show: false),
            )
          ]
        ),
    ),
    ),
      )
    );
  }
}
