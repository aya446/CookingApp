import 'package:cooking_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ph.dart';

class SaveAndShare extends StatefulWidget {
  const SaveAndShare({
    super.key,
  });

  @override
  State<SaveAndShare> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SaveAndShare> {
  bool save = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: kColor,
        boxShadow: const [
          BoxShadow(
              spreadRadius: 0.5,
              blurRadius: 8,
              color: Color.fromARGB(255, 84, 83, 83))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Iconify(
              save == true ? Ph.bookmark_simple_fill : Ph.bookmark_simple_bold,
              color: Colors.white,
            ),
            onPressed: () {
              setState(
                () {
                  save = !save;
                },
              );
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: Colors.white,
          ),
          const Column(
            children: [
              Icon(
                Icons.alarm,
                color: Colors.white,
              ),
              Text(
                '45',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
