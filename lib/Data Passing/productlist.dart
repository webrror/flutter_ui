import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data%20Passing/data.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  void goToProduct(BuildContext context, id) {
    Navigator.pushNamed(context, 'product', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: products.map((product) {
            return TextButton(
                onPressed: () {
                  goToProduct(context, product['id']);
                },
                child: Text(product['name']));
          }).toList(),
        ),
      ),
    );
  }
}
