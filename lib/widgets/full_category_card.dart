import 'package:cooking_app/constants.dart';
import 'package:cooking_app/models/category_model.dart';
import 'package:cooking_app/screens/recipes_view.dart';
import 'package:flutter/material.dart';

class FullCategoryCard extends StatelessWidget {
  const FullCategoryCard({
    super.key,
    required this.categoryModel,
  });
  final Categorymodel categoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return RecipesView(categoryName: categoryModel.title,);
            },
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 90,
              width: 340,
              decoration: BoxDecoration(
                  color: categoryModel.color,
                  borderRadius: const BorderRadius.all(Radius.circular(24))),
              child: Row(
                children: [
                  SizedBox(
                    width: categoryModel.color == kColor2 ? 70 : 0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            categoryModel.title,
                            style: TextStyle(
                                color: categoryModel.textColor,
                                fontSize: 32,
                                fontFamily: 'jomhuria',
                                height: 1.0),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            width: 220,
                            child: Text(
                              categoryModel.subTitle,
                              style: TextStyle(
                                  color: categoryModel.textColor,
                                  fontSize: 22,
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
            top: -25,
            left: categoryModel.color == kColor2 ? -35 : 237,
            right: categoryModel.color == kColor2 ? 244 : -35,
            child: Image(image: AssetImage(categoryModel.image)),
          ),
        ],
      ),
    );
  }
}
