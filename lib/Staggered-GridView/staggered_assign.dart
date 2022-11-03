import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredAssign extends StatelessWidget {
  const StaggeredAssign({super.key});

  @override
  Widget build(BuildContext context) {
    List<StaggeredTile> _staggeredStyle = const [
      StaggeredTile.count(1, 1.3),
      StaggeredTile.count(1, 2),
      StaggeredTile.count(1, 1.3),
      // StaggeredTile.count(2, 1),
      // StaggeredTile.count(2, 1),
    ];

    List<Tile> _tiles = const [
      Tile(
          url:
              'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Wallpaper',
          subtitle: 'Wallpaper'),
      Tile(
          url:
              'https://images.unsplash.com/photo-1512850183-6d7990f42385?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
          title: 'Wallpaper',
          subtitle: 'Wallpaper'),
      Tile(
          url:
              'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Wallpaper',
          subtitle: 'Wallpaper'),
      Tile(
          url:
              'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Wallpaper',
          subtitle: 'Wallpaper'),
      Tile(
          url:
              'https://images.unsplash.com/photo-1511300636408-a63a89df3482?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
          title: 'Wallpaper',
          subtitle: 'Wallpaper')
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Assignment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          crossAxisCount: 2,
          staggeredTiles: _staggeredStyle,
          children: _tiles,
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const Tile({
    Key? key,
    required this.url,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(url),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(subtitle),
            )
          ],
        ));
  }
}
