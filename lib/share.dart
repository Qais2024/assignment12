import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
class share extends StatelessWidget {
  void _sharecontent(){
    String textToshare="https://pub.dev/packages/share_plus";
    Share.share(textToshare);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(onPressed: (){
         _sharecontent();
        },
          child:
          Text("click"),),
      ),
    );
  }
}
