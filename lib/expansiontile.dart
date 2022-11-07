import 'package:flutter/material.dart';

class ExpansionTileSample extends StatelessWidget {
  const ExpansionTileSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expansion Tile'),
        ),
        body: Column(
          children: const [
            ExpansionTile(
              leading: Icon(Icons.insert_emoticon_rounded),
              title: Text('Icons'),
              subtitle: Text('Expand to see icons'),
              children: [
                //TextButton(onPressed: () {}, child: Text('Hello')),
                ListTile(
                  leading: Icon(Icons.android),
                  title: Text('Android'),
                ),
                ListTile(
                  leading: Icon(Icons.apple),
                  title: Text('Apple'),
                ),
                ListTile(
                  leading: Icon(Icons.games_rounded),
                  title: Text('Games'),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella_rounded),
                  title: Text('Umbrella'),
                ),
              ],
            ),
            ExpansionTile(
              title: Text('Icons'),
              subtitle: Text('Expand to see icons'),
              children: [
                ListTile(
                  leading: Icon(Icons.android),
                  title: Text('Android'),
                ),
                ListTile(
                  leading: Icon(Icons.apple),
                  title: Text('Apple'),
                ),
                ListTile(
                  leading: Icon(Icons.games_rounded),
                  title: Text('Games'),
                ),
                ListTile(
                  leading: Icon(Icons.umbrella_rounded),
                  title: Text('Umbrella'),
                ),
              ],
            ),
          ],
        ));
  }
}
