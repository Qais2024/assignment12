import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'rflutter_alert.dart';
void main(){

  runApp(MaterialApp(home: Myapp()));
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});
  @override
  State<Myapp> createState() => _MyappState();
}
class _MyappState extends State<Myapp> {
  List<Map>item=[
    {"name":"Library 1", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 2", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 3", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 4", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 5", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 6", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 7", "library":"rflutter_alert", "page":rflutter_alert(),},
    {"name":"Library 8", "library":"rflutter_alert", "page":rflutter_alert(),},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text("Library",style: TextStyle(fontSize: 15,color: Colors.white),)),
      ),
      body:ListView.builder(
          itemCount: item.length,
          itemBuilder:(context, index) {
            return GestureDetector(
              onTap:(){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => item[index]["page"],));
                });
              },child:  Card(
                child: ListTile(
                  subtitle: Text(item[index]["library"],),
                  title: Text(item[index]["name"],),
                  trailing: Icon(Icons.my_library_books),
                ),
              ),
            );
          },
      ),
    );
  }
}
