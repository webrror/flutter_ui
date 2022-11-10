import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Whatsapp/constants/data.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: const [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1602033350291-a9ab8d800269?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
                    ),
                  ),
                  CircleAvatar(
                    radius: 9,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 8,
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(color: Colors.black54, fontSize: 14),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.black12,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Text(
                  'Recent Updates',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: AllData().recentUpdates.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black54,
                    indent: 88,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage:
                          NetworkImage(AllData().recentUpdates[index][0]),
                    ),
                    title: Text(
                      AllData().recentUpdates[index][1],
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      AllData().recentUpdates[index][2],
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.black12,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Text(
                  'Viewed Updates',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: AllData().viewedUpdates.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Colors.black54,
                    indent: 88,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage:
                          NetworkImage(AllData().viewedUpdates[index][0]),
                    ),
                    title: Text(
                      AllData().viewedUpdates[index][1],
                      style: const TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      AllData().viewedUpdates[index][2],
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
