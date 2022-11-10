import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/Whatsapp/constants/data.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            'Calls',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              tooltip: 'New Call',
              icon: const Icon(
                CupertinoIcons.phone_badge_plus,
                color: Colors.white,
              )),
          const SizedBox(
            width: 8,
          )
        ],
        centerTitle: false,
        backgroundColor: Colors.white10,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.only(left: 20),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(AllData().calls[index][0]),
              ),
              title: Text(
                AllData().calls[index][1],
                style: AllData().calls[index][3] == 'Missed'
                    ? const TextStyle(color: Colors.red)
                    : const TextStyle(color: Colors.white),
              ),
              subtitle: Row(
                children: [
                  AllData().calls[index][2],
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    AllData().calls[index][3],
                    style: const TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(AllData().calls[index][4],
                      style:
                          const TextStyle(color: Colors.white70, fontSize: 12)),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.info_circle,
                        color: Colors.teal,
                      ))
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.white60,
              indent: 75,
            );
          },
          itemCount: AllData().calls.length),
    );
  }
}
