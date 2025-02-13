import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9AA7A8),
      body: Column(children: [
        const SizedBox(
          height: 75,
        ),
        const SearchBarLight(focus: true),
        Expanded(
          child: Stack(
            children: [
              Positioned(
                top: 50,
                bottom: -240,
                left: -100,
                right: -100,
                child: Container(
                  height: 700,
                  width: 2200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 4
                      )
                    ],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(500),
                          topRight: Radius.circular(500)),
                      color: kColor2
                      ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
