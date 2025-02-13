import 'package:cooking_app/models/category_model.dart';
import 'package:cooking_app/screens/recipes_view.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
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
          Container(
            height: 121,
            width: 145,
            decoration: BoxDecoration(
                color: categoryModel.color,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      categoryModel.title,
                      style: TextStyle(
                          color: categoryModel.textColor,
                          fontSize: 32,
                          fontFamily: 'jomhuria',
                          height: 0.5),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      categoryModel.subTitle,
                      style: TextStyle(
                          color: categoryModel.textColor,
                          fontSize: 22,
                          fontFamily: 'jomhuria'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -55,
            left: 10,
            right: 10,
            child: Image(image: AssetImage(categoryModel.image)),
          ),
        ],
      ),
    );
  }
}
