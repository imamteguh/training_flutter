import 'package:flutter/material.dart';

class Product {
  @required
  String title;

  @required
  String imageUrl;

  @required
  int price;

  Product(
    this.imageUrl,
    this.title,
    this.price,
  );
}
