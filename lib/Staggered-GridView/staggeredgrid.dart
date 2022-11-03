import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGrid extends StatelessWidget {
  const StaggeredGrid({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(1, 1),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(4, 1),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(2, 2),
      StaggeredTile.count(2, 1),
      StaggeredTile.count(4, 1),
    ];

    List<Tile> _tiles = const [
      Tile(bgColor: Colors.deepPurple, icon: Icons.android),
      Tile(bgColor: Colors.deepOrange, icon: Icons.home),
      Tile(bgColor: Colors.greenAccent, icon: Icons.assistant_photo_rounded),
      Tile(bgColor: Colors.blue, icon: Icons.circle),
      Tile(bgColor: Colors.teal, icon: Icons.motorcycle),
      Tile(bgColor: Colors.deepPurple, icon: Icons.gamepad),
      Tile(bgColor: Colors.deepPurple, icon: Icons.window_sharp),
      Tile(bgColor: Colors.deepOrange, icon: Icons.home),
      Tile(bgColor: Colors.greenAccent, icon: Icons.assistant_photo_rounded),
      Tile(bgColor: Colors.blue, icon: Icons.circle),
      Tile(bgColor: Colors.teal, icon: Icons.motorcycle),
      Tile(bgColor: Colors.deepPurple, icon: Icons.apple),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final Color bgColor;
  final IconData icon;
  const Tile({
    Key? key,
    required this.bgColor,
    required this.icon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: bgColor,
      child: Icon(
        icon,
        size: 26,
        color: Colors.white,
      ),
    );
  }
}
