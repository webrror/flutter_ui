import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridViewWithCount extends StatelessWidget {
  const GridViewWithCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Count'),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        children: List.generate(100, (index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: IconButton(
                onPressed: () {},
                iconSize: 40,
                color: Colors.greenAccent,
                icon: const Icon(CupertinoIcons.music_note),
              ),
            ),
          );
        }),
      ),
    );
  }
}
