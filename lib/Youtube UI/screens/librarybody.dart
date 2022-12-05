import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class LibraryBody extends StatelessWidget {
  const LibraryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Divider(),
        ListTile(
          leading: Icon(
            FluentIcons.video_clip_20_regular,
          ),
          title: Text(
            'Your videos',
          ),
        ),
        ListTile(
          leading: Icon(
            FluentIcons.arrow_download_20_regular,
          ),
          title: Text(
            'Downloads',
          ),
        ),
        ListTile(
          leading: Icon(
            FluentIcons.movies_and_tv_20_regular,
          ),
          title: Text(
            'Your movies',
          ),
        ),
        ListTile(
          leading: Icon(
            FluentIcons.video_clip_20_regular,
          ),
          title: Text(
            'Your clips',
          ),
        ),
        Divider()
      ],
    );
  }
}
