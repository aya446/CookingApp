import 'package:cooking_app/widgets/recipes_list_view.dart';
import 'package:flutter/material.dart';


class Recipecolumn extends StatelessWidget {
  const Recipecolumn({
    super.key,
    required this.categoryName,
  });

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 25,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_sharp,
                  color: Colors.white,
                )),
            Text(
              categoryName,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: "jomhuria",
                fontSize: 45,
              ),
            ),
          ],
        ),
        Expanded(child:RecipeListView(scroll: true, category: categoryName,),)
      ],
    );
  }
}
