import 'package:flutter/material.dart';

import '../widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  final List<Tab> myTab = [
    Tab(
      text: "Snapshot",
      icon: Icon(Icons.camera),
    ),
    Tab(
      text: "Populer",
      icon: Icon(Icons.star),
    ),
    Tab(
      text: "Favorite",
      icon: Icon(Icons.favorite),
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: TabBar(
            tabs: myTab,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerWidget(),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Snapshot Screen"),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Button"),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Populer Screen"),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Favorite Screen"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
