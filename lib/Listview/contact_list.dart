import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
          const Center(
            child: Text(
              'List of contacts',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1544348817-5f2cf14b88c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
            ),
            title: const Text('John'),
            subtitle: const SelectableText('+91 39872 53423'),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.chat_bubble_fill,
                      color: Colors.deepPurple,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.deepPurple,
                    ))
              ],
            ),
            // trailing: IconButton(
            //     onPressed: () {},
            //     icon: const Icon(
            //       Icons.call_rounded,
            //       color: Colors.deepPurple,
            //     )),
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1180&q=80'),
            ),
            title: const Text('Lucas'),
            subtitle: const SelectableText('+91 99872 52489'),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.chat_bubble_fill,
                      color: Colors.deepPurple,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.deepPurple,
                    ))
              ],
            ),
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
            ),
            title: const Text('Maxine'),
            subtitle: const SelectableText('+91 98957 53477'),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.chat_bubble_fill,
                      color: Colors.deepPurple,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.deepPurple,
                    ))
              ],
            ),
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1570158268183-d296b2892211?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
            ),
            title: const Text('Mark'),
            subtitle: const SelectableText('+91 32555 29746'),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.chat_bubble_fill,
                      color: Colors.deepPurple,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.deepPurple,
                    ))
              ],
            ),
          ),
          const Divider(),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1548142813-c348350df52b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=778&q=80'),
            ),
            title: const Text('Stephanie'),
            subtitle: const SelectableText('+91 90874 32083'),
            trailing: Wrap(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.chat_bubble_fill,
                      color: Colors.deepPurple,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.phone_fill,
                      color: Colors.deepPurple,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
