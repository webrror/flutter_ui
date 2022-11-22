import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}
