import 'package:flutter/material.dart';

class GridViewTestWithBuilder extends StatelessWidget {
  GridViewTestWithBuilder({super.key});

  List images = [
    'https://images.unsplash.com/photo-1589292294638-7c5a4cd4673c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2132&q=80',
    'https://images.unsplash.com/photo-1589292294638-7c5a4cd4673c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2132&q=80',
    'https://images.unsplash.com/photo-1666693038485-b3a060067809?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
    'https://images.unsplash.com/photo-1666441059123-fad28969087e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80',
    'https://images.unsplash.com/photo-1666693038485-b3a060067809?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
    'https://images.unsplash.com/photo-1666693038485-b3a060067809?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
    'https://images.unsplash.com/photo-1666441059123-fad28969087e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Builder'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 / 1,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              images[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
