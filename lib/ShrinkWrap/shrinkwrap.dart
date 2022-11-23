import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: ShrinkWrapExample(),
  ));
}

class ShrinkWrapExample extends StatelessWidget {
  const ShrinkWrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 3,
        shrinkWrap: false,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.redAccent,
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                (index + 1).toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
