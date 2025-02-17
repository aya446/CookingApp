import 'package:cooking_app/widgets/Filtered_list_view.dart';
import 'package:cooking_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  String searchName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9AA7A8),
      body: Column(
        children: [
          const SizedBox(
            height: 75,
          ),
          SearchBarLight(focus: true, onChanged: (value) {
              setState(() {
                searchName = value;
              });
            },),
          const SizedBox(
            height: 40,
          ),
          Expanded(child: FilteredListView(scroll: true, name: searchName))
        ],
      ),
    );
  }
}
