import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomButton extends ConsumerWidget {

  double width;
  String title;
  void Function() onPressed;
  BottomButton({required this.width, required this.title, required this.onPressed});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Container(
        margin: EdgeInsetsDirectional.only(start: width/30, end: width/30, top: 10, bottom: 18),
        child: RawMaterialButton(
          fillColor: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: onPressed,
          child: Text(
            title,
            style: const TextStyle(
                fontFamily: "SFPRODISPLAY",fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}