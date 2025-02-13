import 'package:cooking_app/screens/categories_view.dart';
import 'package:flutter/material.dart';


class CustomTextBotton extends StatelessWidget {
  const CustomTextBotton({
    super.key, required this.text, required this.size,
  });

  final String text;
  final double size;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const CategoriesView();
            }, 
          ),
        );
      },
      child:Align(
        alignment: Alignment.topRight,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontFamily: 'jomhuria', fontSize: size),
        ),
      ),
    );
  }
}
