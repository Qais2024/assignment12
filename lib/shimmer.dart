import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class shimer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
      child: Shimmer.fromColors(child: Container(
        width: 200,
        height: 100,
        color: Colors.white,
      ), baseColor: Colors.grey[300]!, highlightColor: Colors.grey[100]!),
      ),
    );
  }
}
