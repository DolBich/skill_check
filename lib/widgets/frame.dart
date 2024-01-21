import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Frame extends StatelessWidget{
  double width;
  Widget child;
  Frame({required this.width, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        margin: EdgeInsetsDirectional.only(start: width / 30, end: width / 30),
        child: child,
      ),
    );
  }

}