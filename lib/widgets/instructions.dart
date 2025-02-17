import 'package:cooking_app/constants.dart';
import 'package:cooking_app/models/recipe_model.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
  const Instructions({super.key, required this.recipe});
   final RecipeModel recipe;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: kColor2,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            recipe.instruction,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'jomhuria',
              fontSize: 30
            ),
            ),
      ),
    );
  }
}
