import 'package:cooking_app/widgets/custom_list_Tile.dart';
import 'package:cooking_app/widgets/drawer_header.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Drawer(
          backgroundColor: const Color(0xff203334),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: DrawerHeaderr(),
                ),
                divider(),
                const SizedBox(
                  height: 30,
                ),
                const CustomListTile(
                  text: "Notifications",
                  size: 25,
                ),
                divider(),
                const CustomListTile(
                  text: "Settings",
                  size: 25,
                ),
                divider(),
                const CustomListTile(
                  text: "About Us",
                  size: 25,
                ),
                const Spacer(flex: 1,),
                divider(),
                const CustomListTile(
                  text: "Log Out",
                  size: 25,
                  icon: Icon(Icons.logout, color: Colors.white, size: 20,)) ,
                  divider(),
                  const SizedBox(height: 40,)
              ],
            ),
          ),
        ));
  }

  Padding divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: double.infinity,
        color: Colors.white.withOpacity(0.1),
        height: 1,
      ),
    );
  }
}

