import 'package:flutter/material.dart';

import 'screens/youtubebase.dart';

void main() {
  runApp(MaterialApp(
    home: const YoutubeBase(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.black)),
        textTheme: const TextTheme(
          headline2: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
          subtitle1: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
          headline1: TextStyle(color: Colors.black),
          labelMedium: TextStyle(color: Colors.black),
          subtitle2: TextStyle(color: Colors.black),
        ),
        listTileTheme: const ListTileThemeData(
            textColor: Colors.black, iconColor: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black)),
    darkTheme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.grey[850],
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
        textTheme: const TextTheme(
          headline2: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
          subtitle1: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
          headline1: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          subtitle2: TextStyle(color: Colors.white),
        ),
        listTileTheme: const ListTileThemeData(
            textColor: Colors.white, iconColor: Colors.white),
        primaryIconTheme: const IconThemeData(color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white)),
  ));
}
