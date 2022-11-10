import 'package:flutter/material.dart';
import 'package:flutter_application_1/Whatsapp/android/screens/calls.dart';
import 'package:flutter_application_1/Whatsapp/android/screens/chats.dart';
import 'package:flutter_application_1/Whatsapp/android/screens/status.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Widget> screens = const [StatusScreen(), ChatScreen(), CallsScreen()];
  @override
  Widget build(BuildContext context) {
    double textTabWidth = 95;
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text('WhatsApp'),
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
          backgroundColor: Colors.teal[800],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelPadding: const EdgeInsets.symmetric(horizontal: 7),
            isScrollable: true,
            onTap: (int ind) {
              setState(() {
                //tabIndex = ind;
              });
            },
            tabs: [
              const SizedBox(
                width: 40,
                child: Tab(
                    icon: Icon(
                  Icons.camera_alt_rounded,
                  size: 26,
                )),
              ),
              SizedBox(
                width: textTabWidth,
                child: const Tab(
                  text: "CHATS",
                ),
              ),
              SizedBox(
                width: textTabWidth,
                child: const Tab(
                  text: "STATUS",
                ),
              ),
              SizedBox(
                width: textTabWidth,
                child: const Tab(
                  text: "CALL",
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SizedBox(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
