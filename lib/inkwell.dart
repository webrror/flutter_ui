import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Inkewell extends StatefulWidget {
  const Inkewell({super.key});

  @override
  State<Inkewell> createState() => _InkewellState();
}

class _InkewellState extends State<Inkewell> {
  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inkwell'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  data = 'Single Tapped';
                });
              },
              onDoubleTap: () {
                setState(() {
                  data = 'Double Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  data = 'Long Pressed';
                });
              },
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Text('Inkwell')),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(data)
          ],
        ),
      ),
    );
  }
}
