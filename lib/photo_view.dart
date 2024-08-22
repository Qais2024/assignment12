import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class abc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body:Center(
        child: Container(
          width: 300,
          height: 300,
          child: PhotoView(imageProvider: AssetImage("photo/topten.jpg",)),
        ),
      )
    );
  }
}
