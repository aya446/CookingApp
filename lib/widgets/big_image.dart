import 'dart:ui';
import 'package:cooking_app/constants.dart';
import 'package:flutter/material.dart';


class BigImage extends StatelessWidget {
  const BigImage({
    super.key, required this.category, required this.image,
  });
  final String category;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      width: 410,
      child: Stack(
        children: [
          Positioned(
            top: -120,
            right: -190,
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kColor2,
              ),
              child: Center(
                child: SizedBox(
                  height: 370,
                  width: 370,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                    filterQuality: FilterQuality.high,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


}



