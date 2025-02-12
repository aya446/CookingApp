import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  _CategoriesListViewState createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: 280, 
        width: double.infinity,
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
            height: 160,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.35,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
        ),
      ),
    );
  }
}
