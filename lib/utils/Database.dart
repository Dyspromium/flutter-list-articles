import 'dart:async';

import 'package:seafood/partials/ProductCard.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper.internal();

  Future<List<ProductCard>> fetchProducts() async {

    List<ProductCard> productsList = new List<ProductCard>();

    return productsList;
  }
}