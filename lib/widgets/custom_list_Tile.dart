import 'package:flutter/material.dart';


class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.text,
    required this.size,
    this.icon,
    this.onTap,
  });

  final String text;
  final double size;
  final Icon? icon;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: size, fontFamily: 'Jomhuria'),
        ),
        onTap: () {
          onTap;
        },
        trailing: icon);
  }
}
