import 'package:flutter/material.dart';

class clander extends StatefulWidget {
  const clander({super.key});

  @override
  State<clander> createState() => _clanderState();
}

class _clanderState extends State<clander> {
  TextEditingController _dateController = TextEditingController();

  Future<void> selectDate() async{
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100)
    );
    if (_picked != null){
      setState(() {
        _dateController.text = _picked.toString().split(" ")[0];
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: TextFormField(
            controller: _dateController ,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              labelText: 'Date',
                filled: true,
              prefixIcon: Icon(Icons.calendar_today),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
              )
            ),
            readOnly: true,
            onTap: (){
              selectDate();
              },
          ),
        ),
      ),
    );

  }
}
