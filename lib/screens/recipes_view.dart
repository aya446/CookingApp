import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/recipr_column.dart';
import 'package:flutter/material.dart';

class RecipesView extends StatelessWidget {
  const RecipesView({super.key,required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Align(
        alignment: Alignment.center,
        child: Recipecolumn(categoryName: categoryName),
      ),
    );
  }
}
