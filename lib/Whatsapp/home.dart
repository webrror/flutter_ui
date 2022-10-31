import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Whatsapp/screens/calls.dart';
import 'package:flutter_application_1/Whatsapp/screens/chats.dart';
import 'package:flutter_application_1/Whatsapp/screens/status.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({super.key});

  @override
  State<WhatsAppHome> createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  int currentIndex = 1;

  List<Widget> screens = const [StatusScreen(), ChatScreen(), CallsScreen()];

  void onTapNavbarItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(child: screens[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white10,
        currentIndex: currentIndex,
        onTap: onTapNavbarItem,
        unselectedItemColor: Colors.white60,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.smallcircle_circle),
              activeIcon: const Icon(CupertinoIcons.smallcircle_circle_fill),
              label: 'Status',
              backgroundColor: Colors.grey[200]),
          BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.chat_bubble_2),
              activeIcon: const Icon(CupertinoIcons.chat_bubble_2_fill),
              label: 'Chats',
              backgroundColor: Colors.grey[100]),
          BottomNavigationBarItem(
              icon: const Icon(CupertinoIcons.phone),
              activeIcon: const Icon(CupertinoIcons.phone_fill),
              label: 'Calls',
              backgroundColor: Colors.grey[300]),
        ],
      ),
    );
  }
}
