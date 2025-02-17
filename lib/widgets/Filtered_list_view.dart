import 'package:cooking_app/constants.dart';
import 'package:cooking_app/models/recipe_model.dart';
import 'package:cooking_app/services/search_service.dart';
import 'package:cooking_app/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class FilteredListView extends StatefulWidget {
  const FilteredListView({super.key, required this.scroll, required this.name});
  final bool scroll;
  final String name;
  @override
  CategoriesListViewState createState() => CategoriesListViewState();
}

class CategoriesListViewState extends State<FilteredListView> {
  late Future<List<RecipeModel>> recipes;

  @override
  void initState() {
    super.initState();
    recipes = SearchByName().getRecipeByName(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.name.isNotEmpty) {
      recipes = SearchByName().getRecipeByName(widget.name);
    }

    return FutureBuilder(
      future: recipes,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: Text("Error loading data"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text("No recipes available"));
        } else {
          List<RecipeModel> recipeList = snapshot.data!;
          return ListView.builder(
            shrinkWrap: true,
            physics:
                !widget.scroll ? const NeverScrollableScrollPhysics() : null,
            itemCount: recipeList.length,
            itemBuilder: (context, index) {
              RecipeModel recipe = recipeList[index];
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
            padding: const EdgeInsets.only(bottom: 100),
          );
        }
      },
    );
  }
}
