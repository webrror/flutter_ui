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
        // child: GridView.builder(
        //   itemCount: products.length,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2, mainAxisExtent: 250),
        //   itemBuilder: (context, index) {
        //     return Card(
        //       child: Column(
        //         children: [
        //           Container(),
        //           Text()
        //         ],
        //       ),
        //     );
        //   },
        // ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 250),
          children: products.map((product) {
            return GestureDetector(
              onTap: () {
                goToProduct(context, product['id']);
              },
              child: Card(
                child: Column(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(product["image"]))),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(product["name"],
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Text('₹${product["price"].toString()}',
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
            // return TextButton(
            //     onPressed: () {
            //       goToProduct(context, product['id']);
            //     },
            //     child: Text(product['name']));
          }).toList(),
        ),
      ),
    );
  }
}
