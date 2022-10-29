import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardsSample extends StatelessWidget {
  const CardsSample({super.key});

  @override
  Widget build(BuildContext context) {
    List<IconData> list1icons = [
      Icons.camera,
      Icons.chair_rounded,
      Icons.alarm
    ];
    List<String> list1text = ['Camera', 'Chair', 'Alarm'];
    List<IconData> list2icons = [
      Icons.camera,
      Icons.chair_rounded,
      Icons.alarm
    ];
    List<String> list2text = ['Camera', 'Chair', 'Alarm'];
    return Scaffold(
      body: Container(
        color: Colors.black26,
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
                itemCount: list1icons.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(list1icons[index]),
                      title: Text(list1text[index]),
                    ),
                  );
                }),
            ListView.builder(
                itemCount: list1icons.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(list1icons[index]),
                      title: Text(list1text[index]),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
