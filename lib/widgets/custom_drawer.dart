import 'package:cooking_app/widgets/custom_list_Tile.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter_plus/iconify_flutter_plus.dart';
import 'package:iconify_flutter_plus/icons/healthicons.dart';

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
                  child: Row(
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
                  ),
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
