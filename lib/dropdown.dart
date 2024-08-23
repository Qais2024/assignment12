import 'package:flutter/material.dart';
class dropdown extends StatefulWidget {
  const dropdown({super.key});
  @override
  State<dropdown> createState() => _dropdownState();
}
class _dropdownState extends State<dropdown> {
    String _selectedValue="One";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DropdownButton<String>(value: _selectedValue,onChanged: (String? newValue)
        {setState(() {
          _selectedValue=newValue!;
        });},
        items: <String>["One","2","3","4"].map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
          }).toList(),
        ),
      ),
    );
  }
}