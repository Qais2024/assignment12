import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class rflutter_alert extends StatefulWidget {
  const rflutter_alert({super.key});

  @override
  State<rflutter_alert> createState() => _rflutter_alertState();
}
class _rflutter_alertState extends State<rflutter_alert> {
  List item = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            item.add(Card());
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.blueGrey,
        ),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("Qais"),
              trailing: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        item.removeAt(index);
                        Alert(
                          context: context,
                          type: AlertType.info,
                          desc: "آیا میخواید این را حذف کنید",
                          buttons: [
                            DialogButton(
                              color: Colors.blue,
                              child: Text("بله",style: TextStyle(fontSize: 20),),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ).show();
                      },
                    );
                  },
                  child: Icon(Icons.delete)),
            ),
          );
        },
      ),
    );
  }
}
