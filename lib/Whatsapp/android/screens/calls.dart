import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_application_1/Whatsapp/constants/data.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_ic_call_sharp),
      ),
      //backgroundColor: Colors.black,
      body: ListView.separated(
          padding: const EdgeInsets.only(top: 10),
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
                    : const TextStyle(color: Colors.black),
              ),
              subtitle: Row(
                children: [
                  AllData().calls[index][2],
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    AllData().calls[index][3],
                    style: const TextStyle(color: Colors.black54),
                  ),
                ],
              ),
              trailing: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Text(AllData().calls[index][4],
                      style:
                          const TextStyle(color: Colors.black87, fontSize: 12)),
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
              color: Colors.black54,
              indent: 75,
            );
          },
          itemCount: AllData().calls.length),
    );
  }
}
