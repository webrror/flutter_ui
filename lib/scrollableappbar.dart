import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScrollableAppBar extends StatefulWidget {
  const ScrollableAppBar({super.key});

  @override
  State<ScrollableAppBar> createState() => _ScrollableAppBarState();
}

class _ScrollableAppBarState extends State<ScrollableAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            floating: true,
            pinned: true,
            title: const Text('Scrollable App Bar'),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_rounded))
            ],
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.redAccent,
                child: Center(child: Text('Hello')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.greenAccent,
                child: Center(child: Text('Hello')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300,
                color: Colors.blueAccent,
                child: Center(child: Text('Hello')),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
