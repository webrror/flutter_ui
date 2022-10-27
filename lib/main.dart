import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/login_with_form.dart';
import 'package:flutter_application_1/welcome.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/icon_park_twotone.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
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
    Timer(const Duration(milliseconds: 3000), () {
      //Navigator.pushNamed(context, routeName);
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginWithValidation()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1530569673472-307dc017a82d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=776&q=80'),
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
              Iconify(IconParkTwotone.fire, size: 90, color: Colors.black),
              // Image.asset('assets/images/snapchat.png',
              //     color: Colors.yellow, width: 100),
              // const Image(image: AssetImage(   //2nd way to add images
              //   'assets/images/youtube.png',
              // ),
              //   color: Colors.red,
              //   width: 100
              // ),
              // Image.asset(
              //   'assets/images/twitter.png',
              //   color: Colors.blue,
              //   width: 100
              // ),
              const SizedBox(
                height: 20,
              ),
              // const Text(
              //   "Snapchat",
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
