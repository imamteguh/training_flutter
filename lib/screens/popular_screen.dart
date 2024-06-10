import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class PopularScreen extends StatelessWidget {
  PopularScreen({super.key});

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    List<Product> product = List.generate(60, (index) {
      return Product(
        "https://picsum.photos/id/${index + 40}/200",
        faker.food.restaurant(),
        10000 + Random().nextInt(10000),
      );
    });

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            footer: Container(
              color: Colors.white70,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product[index].title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  Text("Rp. ${product[index].price}"),
                ],
              ),
            ),
            child: Image.network(product[index].imageUrl),
          );
        },
      ),
    );
  }
}
