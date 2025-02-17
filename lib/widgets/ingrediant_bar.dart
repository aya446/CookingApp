import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class IngrediantBar extends StatelessWidget {
  const IngrediantBar({super.key, required this.ingrediants, required this.measure});
  final String ingrediants;
  final String measure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: TextWidget(color: kColor2, size: 30, text: ingrediants ,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextWidget(color: Colors.black.withOpacity(0.5), size: 30, text: measure,),
            ),
          ],
        ) ,
      ),
    );
  }
}