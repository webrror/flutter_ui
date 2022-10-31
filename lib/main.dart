import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Listview/listtest.dart';
import 'package:flutter_application_1/Listview/lvseperator.dart';
import 'package:flutter_application_1/Listview/movie_list_builder.dart';
import 'package:flutter_application_1/bottom_navbar.dart';
import 'package:flutter_application_1/cards_sample.dart';
import 'package:flutter_application_1/Listview/contact_list.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/login_with_form.dart';
import 'package:flutter_application_1/Listview/lvbuilder.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: const Splash(),
  ));
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 2000), () {
      //Navigator.pushNamed(context, routeName);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const BottomNavBar()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      
      child: Scaffold(
        
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1540417525167-05d2c4777f11?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
                  // image: AssetImage(
                  //   'assets/images/bg.jpg',
                  // ),
                  fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                // Icon(
                //   Icons.whatsapp,
                //   size: 90,
                //   color: Colors.green,
                // ),
                Iconify(IconParkTwotone.android,
                    size: 100, color: Colors.white),
                // Image.asset(
                //   'assets/images/twitter.png',
                //   color: Colors.blue,
                //   width: 100
                // ),
                // SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
