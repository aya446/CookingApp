import 'package:cooking_app/widgets/ingrediant_bar.dart';
import 'package:flutter/material.dart';

class IngrediantListView extends StatelessWidget {
  const IngrediantListView({super.key, required this.ingrediants, required this.measures});
  final List<String> ingrediants;
  final List<String> measures;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ingrediants.length*63,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),  
        scrollDirection: Axis.vertical,
        itemCount: ingrediants.length,
        itemBuilder: (context, index) {
          return IngrediantBar(ingrediants: ingrediants[index] , measure: measures[index],);
        },),
    );
  }
}