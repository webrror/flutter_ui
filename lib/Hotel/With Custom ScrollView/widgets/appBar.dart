import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 15.0, top: 20, right: 15),
      sliver: SliverAppBar(
        backgroundColor: Colors.transparent,
        leading: Wrap(
          direction: Axis.vertical,
          children: const [
            Text(
              'Hello @Jerin',
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Text(
              'Find Your Favorite Hotel',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 60,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1668661628231-d630edd8ad95?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=836&q=80'))),
            ),
          )
        ],
      ),
    );
  }
}
