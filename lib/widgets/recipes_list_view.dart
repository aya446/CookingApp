import 'package:cooking_app/constants.dart';
import 'package:cooking_app/models/recipe_of_category_model.dart';
import 'package:cooking_app/services/by_category.dart';
import 'package:cooking_app/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipeListView extends StatefulWidget {
  const RecipeListView(
      {super.key, required this.scroll, required this.category});
  final bool scroll;
  final String category;
  @override
  _CategoriesListViewState createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<RecipeListView> {
  late Future<List<RecipeOfCategoryModel>> recipes;

  @override
  void initState() {
    super.initState();
    recipes =
        RecipesByCategotyServise().getRecipeByCategory(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: recipes,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator(color: Colors.white,));
        } else if (snapshot.hasError) {
          return const Center(child: Text("Error loading data"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("No recipes available"));
        } else {
          List<RecipeOfCategoryModel> recipeList = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics:
                !widget.scroll ? const NeverScrollableScrollPhysics() : null,
            itemCount: recipeList.length,
            itemBuilder: (context, index) {
              RecipeOfCategoryModel recipe = recipeList[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: RecipesCard(
                  id: recipe.mealID,
                  color: index % 2 == 0 ? kColor3 : Colors.white,
                  right: index % 2 == 0 ? true : false,
                  textColor: index % 2 == 0 ? Colors.white : kColor2,
                ),
              );
            },
            padding: EdgeInsets.only(bottom: 100),
          );
        }
      },
    );
  }
}
