import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text('Tabs'),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert),
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(child: Text('Settings')),
                  PopupMenuItem(child: Text('About')),
                  PopupMenuItem(child: Text('Help'))
                ];
              },
            )
          ],
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            //isScrollable: true,

            tabs: [
              Tab(
                text: 'CHAT',
              ),
              Tab(
                //icon: Icon(Icons.photo_camera),
                text: 'STATUS',
              ),
              Tab(
                //icon: Icon(Icons.photo_camera),
                text: 'CALLS',
              )
            ],
          ),
        ),
      ),
    );
  }
}
