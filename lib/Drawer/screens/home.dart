import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Drawer/screens/other.dart';
import 'package:quickalert/quickalert.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: const Text('Navigation Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1666584202115-8dacc6d50e73?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'))),
              accountName: Text('Mark Sawyer'),
              accountEmail: Text('mark@sawyer.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=932&q=80'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=922&q=80'),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                ),
              ],
            ),
            ListTile(
              dense: true,
              title: const Text('Home'),
              trailing: const Icon(Icons.home_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Other(),
                    ));
              },
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              dense: true,
              title: Text('Settings'),
              trailing: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Other(),
                    ));
              },
            ),
            const Divider(
              thickness: 1,
            ),
            const Spacer(),
            ListTile(
              title: const Text('Exit Application(Quick Alert)'),
              trailing: const Icon(Icons.exit_to_app_rounded),
              onTap: () {
                QuickAlert.show(
                  title: 'Are you sure you want to exit?',
                  context: context,
                  confirmBtnText: 'Exit',
                  cancelBtnText: 'Cancel',
                  confirmBtnColor: Colors.redAccent,
                  showCancelBtn: true,
                  type: QuickAlertType.warning,
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  },
                  onConfirmBtnTap: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else {
                      exit(0);
                    }
                  },
                );
              },
            ),
            ListTile(
              title: const Text('Exit Application'),
              trailing: const Icon(Icons.exit_to_app_rounded),
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    // rfAlert & QuickAlert
                    return AlertDialog(
                      title: const Text('Exit Application'),
                      content: const Text('Do you want to exit application ?'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              if (Platform.isAndroid) {
                                SystemNavigator.pop();
                              } else {
                                exit(0);
                              }
                            },
                            child: const Text('Exit')),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'))
                      ],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
