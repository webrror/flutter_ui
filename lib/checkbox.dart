import 'package:flutter/material.dart';

class CheckBoxSample extends StatefulWidget {
  const CheckBoxSample({super.key});

  @override
  State<CheckBoxSample> createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'CheckBox',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Checkbox(
          value: isChecked,
          activeColor: Colors.blue,
          checkColor: Colors.white,
          //shape: const CircleBorder(),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ),
    );
  }
}
