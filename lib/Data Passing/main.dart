import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data%20Passing/productlist.dart';

import 'product.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const ProductList(),
    routes: {
      "product": (context) => const Product(),
    },
  ));
}
