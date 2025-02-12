import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/full_category_card.dart';
import 'package:flutter/material.dart';

class FullCategoriesListView extends StatefulWidget {
  const FullCategoriesListView({super.key});

  @override
  _CategoriesListViewState createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<FullCategoriesListView> {
  @override
  Widget build(BuildContext context) {
        double itemHeight = 100; // ارتفاع كل عنصر
    int itemCount = kCategoryModelList2.length; // عدد العناصر
    double totalHeight = itemHeight * itemCount;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: totalHeight, 
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: kCategoryModelList2.length,
          itemBuilder: (context, index, realIndex) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: FullCategoryCard(
                categoryModel: kCategoryModelList2[index],
              ),
            );
          },
          options: CarouselOptions(
            enlargeCenterPage: false,
            enableInfiniteScroll: false,
            scrollDirection: Axis.vertical,
            viewportFraction: 0.16,
            padEnds: false,
            //scrollPhysics: PageScrollPhysics(),
            //autoPlay: true,
            //autoPlayInterval: Duration(seconds: 3),
            //autoPlayAnimationDuration: Duration(milliseconds: 800),
          ),
        ),
      ),
    );
  }
}
