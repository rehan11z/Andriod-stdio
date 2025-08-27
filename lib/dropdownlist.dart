import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  final items  = ['Item 1','Item 2','Item 3','Item 4','Item 5'];
  String? value;
  DropdownMenuItem<String> buildMenuItem (String item) =>
        DropdownMenuItem(value: item,
        child: Text(
          item ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
        ),
        );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Dropdown Menu",),
backgroundColor: Colors.blueAccent,
centerTitle: true,
),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
          child: Container(
            margin: EdgeInsets.only(left: 50,right: 50),
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey  ,width: 2)
            ),
            child: DropdownButton<String>(
              value: value,
              iconSize: 36,
              isExpanded: true,
              items: items.map(buildMenuItem).toList(),
              onChanged: (value) => setState(() => this.value = value,
            ),
          ),
        ),
      ),
      )
    );
  }
}
