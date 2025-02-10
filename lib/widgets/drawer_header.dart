import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/healthicons.dart';


class DrawerHeaderr extends StatelessWidget {
  const DrawerHeaderr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Iconify(Healthicons.ui_user_profile_outline,
            color: Colors.white, size: 45),
        SizedBox(
          width: 5,
        ),
        Text(
          'Hello!',
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontFamily: 'Jomhuria'),
        ),
      ],
    );
  }
}

