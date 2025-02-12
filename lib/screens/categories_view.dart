import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/full_category_List_view.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(
            height: 25,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.arrow_back_ios_sharp, color:  Colors.white, ) ),
                  const Text("Categories", style:TextStyle(color: Colors.white, fontFamily: "jomhuria", fontSize: 45,))
                ],
              ),
            
          const Expanded(child: FullCategoriesListView()),
        ],),
      ),
    );
  }
}