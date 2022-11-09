import 'package:flutter/material.dart';
import 'package:flutter_application_1/Named%20Routes/about.dart';
import 'package:flutter_application_1/Named%20Routes/home.dart';
import 'package:flutter_application_1/Named%20Routes/settings.dart';
import 'package:flutter_application_1/expansionpanellist.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes',
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomeRoute(),
      '/settings': (context) => const Settings(),
      '/about': (context) => const About()
    },
  ));
}
