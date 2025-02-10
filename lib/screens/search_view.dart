import 'package:cooking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xff9AA7A8),
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            SizedBox(
              height: 75,
            ),
            SearchBarLight(focus: true),
          ],
        ),
      ),
    );
  }
}