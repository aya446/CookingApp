import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  CategoriesListViewState createState() => CategoriesListViewState();
}

class CategoriesListViewState extends State<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 188,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CarouselSlider.builder(
          itemCount: kCategoryModelList.length,
          itemBuilder: (context, index, realIndex) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: CategoryCard(
                categoryModel: kCategoryModelList[index],
              ),
            );
          },
          options: CarouselOptions(
            height: 125,
            enlargeCenterPage: true,
            clipBehavior: Clip.none,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.36,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
      ),
    );
  }
}
