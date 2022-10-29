import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListViewWithBuilder extends StatelessWidget {
  const ListViewWithBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> id = ['1', '2', '3', '4'];
    List<int> codes = [100, 200, 300, 700];

    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: ListView.builder(
          itemCount: id.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                height: 40,
                color: Colors.green[codes[index]],
                child: Center(
                  child: Text(id[index]),
                ),
              ),
            );
          }),
    );
  }
}
