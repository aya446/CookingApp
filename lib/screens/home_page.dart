import 'package:cooking_app/screens/categories_view.dart';
import 'package:cooking_app/screens/search_view.dart';
import 'package:cooking_app/widgets/category_list_view.dart';
import 'package:cooking_app/widgets/custom_drawer.dart';
import 'package:cooking_app/widgets/custom_welcome.dart';
import 'package:cooking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xff9AA7A8),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          const SizedBox(
            height: 45,
          ),
          CustomWelcomRow(scaffoldKey: _scaffoldKey),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            child: const AbsorbPointer(
                child: SearchBarLight(
              focus: false,
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          const CategoriesListView(),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const CategoriesView();
                  },
                ),
              );
            },
            child: const Text(
              'See all',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'jomhuria', fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
