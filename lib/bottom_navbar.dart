import 'package:flutter/material.dart';
import 'package:flutter_application_1/cards_sample.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> bodies = [
    // IconButton(
    //   iconSize: 200,
    //   onPressed: () {},
    //   icon: const Icon(
    //     Icons.home_rounded,
    //     color: Colors.black,
    //   ),
    // ),
    const CardsSample(),
    IconButton(
      iconSize: 200,
      onPressed: () {},
      icon: const Icon(
        Icons.search_rounded,
        color: Colors.black,
      ),
    ),
    IconButton(
      iconSize: 200,
      onPressed: () {},
      icon: const Icon(
        Icons.camera_roll_rounded,
        color: Colors.black,
      ),
    ),
    IconButton(
      iconSize: 200,
      onPressed: () {},
      icon: const Icon(
        Icons.favorite_rounded,
        color: Colors.black,
      ),
    ),
    IconButton(
      iconSize: 200,
      onPressed: () {},
      icon: const Icon(
        Icons.account_circle_rounded,
        color: Colors.black,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      body: Center(child: bodies[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 100,
        currentIndex: currentIndex,
        onTap: onItemTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.grey[100]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.search_rounded),
              label: 'Search',
              backgroundColor: Colors.grey[200]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.camera_roll_rounded),
              label: 'Reels',
              backgroundColor: Colors.grey[300]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.favorite_rounded),
              label: 'Likes',
              backgroundColor: Colors.grey[400]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.account_circle_rounded),
              label: 'Me',
              backgroundColor: Colors.grey[500]),
        ],
      ),
    );
  }
}

// Shifting navbar used to change navbar color on clicking each item