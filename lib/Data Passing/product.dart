import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data%20Passing/data.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    // * fetching arguements from previous page
    final id = ModalRoute.of(context)?.settings.arguments;

    // * finding product from the data using the passed arguement(id)
    final product = products.firstWhere(
      (element) => element["id"] == id,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Name',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(product["name"], style: const TextStyle(fontSize: 20))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Price',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("₹${product["price"]}",
                    style: const TextStyle(fontSize: 20))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(product["desc"], style: const TextStyle(fontSize: 20))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
