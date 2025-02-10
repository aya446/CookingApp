import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/ooui.dart';

class CustomWelcomRow extends StatelessWidget {
  const CustomWelcomRow({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Iconify(
              Ooui.menu,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          const SizedBox(
            width: 8,
          ),
          const Text(
            'Hello There!',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontFamily: 'jomhuria'),
          ),
        ],
      ),
    );
  }
}
