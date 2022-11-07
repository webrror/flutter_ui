import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class CheckBoxList extends StatefulWidget {
  const CheckBoxList({super.key});

  @override
  State<CheckBoxList> createState() => _CheckBoxListState();
}

class _CheckBoxListState extends State<CheckBoxList> {
  bool isChecked = false;
  List data = [
    [
      'https://developer.android.com/static/images/brand/Android_Robot.png',
      'Android',
      false
    ],
    [
      'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
      'Flutter',
      false
    ],
    [
      'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?202210310306',
      'iOS',
      false
    ],
    ['https://www.php.net/images/logos/new-php-logo.png', 'PHP', false],
    [
      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/640px-Node.js_logo.svg.png',
      'Node JS',
      false
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'CheckBox ListTile',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Card(
                child: CheckboxListTile(
                  value: data[index][2],
                  onChanged: (value) {
                    setState(() {
                      data[index][2] = value!;
                    });
                  },
                  activeColor: Colors.deepPurpleAccent,
                  secondary: SizedBox(
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        data[index][0],
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  title: Text(data[index][1]),
                ),
              ),
            );
          },
        ));
  }
}
