import 'package:flutter/material.dart';
import 'package:training/screens/search_screen.dart';

import '../widgets/drawer_widget.dart';
import './snapshot_screen.dart';
import './favorite_screen.dart';
import './popular_screen.dart';

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
          centerTitle: false,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: TabBar(
            tabs: myTab,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SearchScreen.routeName);
              },
              icon: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerWidget(),
        body: TabBarView(
          children: [
            SnapshotScreen(),
            PopularScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
