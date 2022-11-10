import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Whatsapp/constants/data.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

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
            'Status',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              leading: CircleAvatar(
                radius: 26,
                backgroundImage:
                    AssetImage('assets/images/add-whatsapp-status.png'),
              ),
              title: Text(
                'My Status',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(color: Colors.white60, fontSize: 14),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white10,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Text(
                  'Recent Updates',
                  style: TextStyle(color: Colors.white),
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
                    color: Colors.white60,
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
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      AllData().recentUpdates[index][2],
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white10,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                child: Text(
                  'Viewed Updates',
                  style: TextStyle(color: Colors.white),
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
                    color: Colors.white60,
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
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      AllData().viewedUpdates[index][2],
                      style:
                          const TextStyle(color: Colors.white60, fontSize: 12),
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
