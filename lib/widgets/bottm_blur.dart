import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomBlur extends StatelessWidget {
  const BottomBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 130,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  kColor.withOpacity(1),
                  kColor.withOpacity(0.9),
                  kColor.withOpacity(0.5),
                  kColor.withOpacity(0.2),
                  kColor.withOpacity(0),
                ],
              ),
            ),
            child: const Padding(
              padding:  EdgeInsets.only(left: 15 ,right: 15, top: 55,bottom: 20),
              child:  NavigationBarr(),
            ),
          ),
        ),
      ],
    );
  }
}
