import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.teal,
              height: 400,
              width: 400,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                color: Colors.deepOrange,
                height: 200,
                width: 200,
              ),
            ),
            Container(
              color: Colors.greenAccent,
              height: 200,
              width: 200,
            ),
            Positioned(
              top: 155,
              left: 145,
              child: Container(
                color: Colors.black,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
