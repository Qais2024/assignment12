import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
void main(){
 runApp(MaterialApp());
}
class spinkit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SpinKitCircle(
          color: Colors.blue,
          size: 100,
          duration: Duration(seconds: 2),

        ),
      ),
    );
  }
}
