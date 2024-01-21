
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  String text;

  InfoCard({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        " $text ",
        style: const TextStyle(
            fontFamily: "SFPRODISPLAY", fontSize: 16, color: Colors.grey),
      ),
    );
  }
}