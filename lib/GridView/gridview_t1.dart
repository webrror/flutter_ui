import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewTOne extends StatelessWidget {
  const GridViewTOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView T1'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        // crossAxisSpacing: 1,
        // mainAxisSpacing: 1,
        children: List.generate(10, (index) {
          return Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    iconSize: 50,
                    color: Colors.greenAccent,
                    icon: const Icon(CupertinoIcons.music_note),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Text $index')
              ],
            ),
          );
        }),
      ),
    );
  }
}
