import 'package:flutter/material.dart';

class GridViewWithCustom extends StatelessWidget {
  const GridViewWithCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView with Custom'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.custom(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              height: 100,
              width: 100,
            );
          }, childCount: 10),
        ),
      ),
    );
  }
}
