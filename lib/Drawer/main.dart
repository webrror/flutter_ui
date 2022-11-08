import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drawer/screens/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.blue,
      //useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
    home: const Home(),
  ));
}
