import 'package:cooking_app/constants.dart';
import 'package:cooking_app/models/recipe_model.dart';
import 'package:cooking_app/widgets/big_image.dart';
import 'package:cooking_app/widgets/ingrediant_list_view.dart';
import 'package:cooking_app/widgets/instructions.dart';
import 'package:cooking_app/widgets/save_and_share.dart';
import 'package:cooking_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class OneRecipeView extends StatefulWidget {
  const OneRecipeView({super.key, required this.recipe, required this.image});

  final RecipeModel recipe;
  final String image;

  @override
  State<OneRecipeView> createState() => _OneRecipeViewState();
}

class _OneRecipeViewState extends State<OneRecipeView> {
  bool save = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 40),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_sharp,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 150),
                        const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: SaveAndShare(),
                        ),
                      ],
                    ),
                    Expanded(
                      child: BigImage(
                        image: widget.image,
                        category: widget.recipe.category,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      TextWidget(
                        text: widget.recipe.name,
                        size: 40,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 40),
                      TextWidget(
                          text: 'Ingrediants:', size: 30, color: kColor2),
                      IngrediantListView(
                          ingrediants: widget.recipe.ingredients,
                          measures: widget.recipe.measures),
                      const SizedBox(height: 40),
                      TextWidget(
                          text: 'Instructions:', size: 30, color: kColor2),
                      const SizedBox(height: 20),
                      Instructions(recipe: widget.recipe),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
