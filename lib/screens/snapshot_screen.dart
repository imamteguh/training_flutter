import 'dart:math';

import 'package:flutter/material.dart';

class SnapshotScreen extends StatelessWidget {
  SnapshotScreen({super.key});

  final List<Container> myList = List.generate(60, (index) {
    return Container(
      color: Color.fromARGB(
        255,
        Random().nextInt(255),
        Random().nextInt(255),
        Random().nextInt(255),
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 3 / 4,
      children: myList,
    );
  }
}
