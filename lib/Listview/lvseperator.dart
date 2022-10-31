import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListWithSeperator extends StatelessWidget {
  const ListWithSeperator({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> id = ['1', '2', '3', '4'];
    List<int> codes = [100, 200, 300, 700];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with Seperator'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 3),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepPurple[codes[index]]),
                  height: 60,
                  child: Center(child: Text(id[index])),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Icon(
                Icons.android_rounded,
                color: Colors.deepPurple[codes[index]],
              );
            },
            itemCount: id.length),
      ),
    );
  }
}
