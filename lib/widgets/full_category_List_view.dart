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
    double itemHeight = 90; 
    int itemCount = kCategoryModelList2.length; 
    double totalHeight = itemHeight * itemCount;
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: totalHeight+100, 
        width: double.infinity,
        child: CarouselSlider.builder(
          itemCount: kCategoryModelList2.length+1,
          itemBuilder: (context, index, realIndex) {
            if (index ==kCategoryModelList2.length){
              return const SizedBox(height: 50,);
            }
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
