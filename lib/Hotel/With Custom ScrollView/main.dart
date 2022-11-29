import 'package:flutter/material.dart';

import 'screens/home.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const CustomScrollViewHome(),
  ));
}
