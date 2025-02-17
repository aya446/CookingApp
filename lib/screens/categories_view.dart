import 'package:cooking_app/constants.dart';
import 'package:cooking_app/widgets/bottm_blur.dart';
import 'package:cooking_app/widgets/full_category_List_view.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      body: const Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Text("Categories",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "jomhuria",
                            fontSize: 45,
                          ))
                    ],
                  ),
                ),
                Expanded(child: FullCategoriesListView()),
                //SizedBox(height: 100,)
              ],
            ),
          ),
          BottomBlur(),
        ],
      ),
    );
  }
}
