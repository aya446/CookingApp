import 'package:cooking_app/constants.dart';
import 'package:cooking_app/services/by_id.dart';
import 'package:flutter/material.dart';

class RecipesCard extends StatelessWidget {
  const RecipesCard({
    super.key,
    required this.right,
    required this.color,
    required this.textColor,
    required this.id,
  });
  final bool right;
  final Color color;
  final Color textColor;
  final String id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: RecipesByIdServise().getRecipeById(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
              child: CircularProgressIndicator()); 
        } else if (snapshot.hasError) {
          return Center(
              child: Text("Error: ${snapshot.error}"));
        } else if (!snapshot.hasData) {
          return const Center(
              child: Text("No recipe found")); 
        } else {
          var recipe = snapshot.data!;
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(24))),
                  child: Row(
                    children: [
                      SizedBox(
                        width: right == true ? 0 : 75,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 225 ,
                                child: Text(
                                  recipe.name,
                                  style: TextStyle(
                                      color: kColor2,
                                      fontSize: 37,
                                      fontFamily: 'jomhuria',
                                      height: 1.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 225,
                                child: Text(
                                  recipe.instruction!,
                                  maxLines: 4,
                                  style: TextStyle(
                                      color: textColor,
                                      fontSize: 25,
                                      fontFamily: 'jomhuria',
                                      height: 0.7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -10,
                left: right == true ? null : -25,
                right: right == true ? -25 : null,
                child: CircleAvatar(
                  backgroundColor: kColor2,
                  radius: 75,
                  child: const Image(
                    image: AssetImage('assets/images/seafood.png'),
                  ),
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
