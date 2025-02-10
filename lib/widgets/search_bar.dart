import 'package:flutter/material.dart';

class SearchBarLight extends StatelessWidget {
  const SearchBarLight({super.key, required this.focus, });
  final bool focus;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: 350,
        child:TextField(
          autofocus: focus,
          decoration: InputDecoration(
            hoverColor: Colors.white ,
            hintText: 'Search . .',
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.8),),
            suffixIcon: const Icon(Icons.search, color: Colors.white,size: 25,),
            border: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
          ),
        ),
      ),
    );
  }
}
