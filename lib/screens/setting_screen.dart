import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/setting';
  SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Setting Screen"),
          ],
        ),
      ),
    );
  }
}
