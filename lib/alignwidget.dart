import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlignWidget extends StatefulWidget {
  const AlignWidget({super.key});

  @override
  State<AlignWidget> createState() => _AlignWidgetState();
}

class _AlignWidgetState extends State<AlignWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Align Widget'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10)),
          child: const Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.apple,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
