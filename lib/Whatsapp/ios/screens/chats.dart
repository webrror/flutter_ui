import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Whatsapp/constants/data.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Chats',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white10,
        actions: [
          IconButton(
              onPressed: () {},
              tooltip: 'New Message',
              icon: const Icon(
                CupertinoIcons.pencil_ellipsis_rectangle,
                color: Colors.white,
              )),
          const SizedBox(
            width: 8,
          )
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(AllData().chats[index][0]),
              ),
              title: Text(
                AllData().chats[index][1],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                AllData().chats[index][2],
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              trailing: Text(
                AllData().chats[index][3],
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white38,
              indent: 85,
            );
          },
          itemCount: AllData().chats.length),
    );
  }
}
