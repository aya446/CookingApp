import 'dart:ui';
import 'package:flutter/material.dart';


class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    required this.color,
  });
  final String text;
  final double size;
  final Color color;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 300,
      child: Text(
        text,
        maxLines: 2,
        style: TextStyle(
            color: color, fontSize: size, fontFamily: 'jomhuria', height: 0.8),
      ),
    );
  }
}
