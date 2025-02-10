import 'package:cooking_app/widgets/custom_drawer.dart';
import 'package:cooking_app/widgets/custom_welcome.dart';
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
        ],
      ),
    );
  }
}
