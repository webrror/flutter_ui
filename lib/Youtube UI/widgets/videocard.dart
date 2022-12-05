import 'package:flutter/material.dart';
import 'package:flutter_application_1/Youtube%20UI/data/data.dart';

class VideoCard extends StatelessWidget {
  final int index;
  const VideoCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.37,
      width: screenWidth,
      child: Column(
        children: [
          Container(
            height: screenHeight * 0.28,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(videos[index]['thumbnail']))),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                      child: Text(
                    videos[index]['length'],
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  )),
                ),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(videos[index]['uploaderAvatar']),
            ),
            title: Text(
              videos[index]['title'],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16),
            ),
            
            subtitle: Wrap(
              children: [
                Text(
                  '${videos[index]['uploader']} • ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  '${videos[index]['views']} • ',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
                Text(
                  videos[index]['age'],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
