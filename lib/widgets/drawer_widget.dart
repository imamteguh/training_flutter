import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/setting_screen.dart';
import '../screens/contact_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            height: 150,
            color: Theme.of(context).colorScheme.inversePrimary,
            alignment: Alignment.bottomLeft,
            child: const Text(
              "Main menu",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
            },
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 22),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(SettingScreen.routeName);
            },
            leading: Icon(
              Icons.settings,
              size: 35,
            ),
            title: Text(
              "Setting",
              style: TextStyle(fontSize: 22),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ContactScreen.routeName);
            },
            leading: Icon(
              Icons.phone_android_rounded,
              size: 35,
            ),
            title: Text(
              "Contact",
              style: TextStyle(fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
