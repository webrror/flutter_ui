import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Youtube%20UI/screens/librarybody.dart';
import 'package:jovial_svg/jovial_svg.dart';

import 'homebody.dart';

class YoutubeBase extends StatefulWidget {
  const YoutubeBase({super.key});

  @override
  State<YoutubeBase> createState() => _YoutubeBaseState();
}

class _YoutubeBaseState extends State<YoutubeBase> {
  int currentIndex = 0;


  void onItemTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  Brightness platformBrightness =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window)
          .platformBrightness;

  Future openBottomSheet() {
    return showModalBottomSheet(
      isScrollControlled: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 5,
      context: context,
      isDismissible: false,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      builder: (context) {
        return ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 5),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Create',
                    style: TextStyle(fontSize: 22),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.clear))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: platformBrightness == Brightness.dark
                    ? Colors.white24
                    : Colors.black12,
                child: Icon(
                  FluentIcons.arrow_upload_24_regular,
                  color: platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              title: const Text(
                'Upload a video',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: platformBrightness == Brightness.dark
                    ? Colors.white24
                    : Colors.black12,
                child: Icon(
                  FluentIcons.live_24_regular,
                  color: platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              title: const Text(
                'Go live',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 24,
                backgroundColor: platformBrightness == Brightness.dark
                    ? Colors.white24
                    : Colors.black12,
                child: Icon(
                  FluentIcons.compose_24_regular,
                  color: platformBrightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              title: const Text(
                'Create a post',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }

  List<Widget> bodies = [
    const HomeBody(),
    const Center(
      child: Text(
        'Explore',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const HomeBody(),
    const Center(
      child: Text(
        'Subscriptions',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const LibraryBody()
  ];

  final String ytLogoDark =
      'https://raw.githubusercontent.com/webrror/flutter_ui/4b35793a6ca4c2c520dc8d2dbfc5f69267caa109/assets/images/ytdark.svg';

  final String ytLogoLight =
      'https://raw.githubusercontent.com/webrror/flutter_ui/4b35793a6ca4c2c520dc8d2dbfc5f69267caa109/assets/images/ytlight.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 200,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
              child: ScalableImageWidget.fromSISource(
                  fit: BoxFit.fitWidth,
                  si: ScalableImageSource.fromSvgHttpUrl(Uri.parse(
                      platformBrightness == Brightness.dark
                          ? ytLogoDark
                          : ytLogoLight)))),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast_sharp)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_sharp)),
          const CircleAvatar(
            radius: 14,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1670168173015-9b014630f5c2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: bodies[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedItemColor:
            platformBrightness == Brightness.dark ? Colors.white : Colors.black,
        selectedItemColor:
            platformBrightness == Brightness.dark ? Colors.white : Colors.black,
        currentIndex: currentIndex,
        onTap: onItemTap,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          const BottomNavigationBarItem(
            activeIcon: Icon(FluentIcons.home_20_filled),
            icon: Icon(FluentIcons.home_20_regular),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
              activeIcon: Icon(CupertinoIcons.compass_fill),
              icon: Icon(CupertinoIcons.compass),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: openBottomSheet,
                icon: const Icon(
                  FluentIcons.add_circle_20_regular,
                ),
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                iconSize: 40,
              ),
              label: ''),
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.subscriptions_sharp),
              icon: Icon(Icons.subscriptions_outlined),
              label: 'Subscriptions'),
          const BottomNavigationBarItem(
              activeIcon: Icon(Icons.video_library_sharp),
              icon: Icon(Icons.video_library_outlined),
              label: 'Library'),
        ],
      ),
    );
  }
}
