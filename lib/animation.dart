import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

class AnimLottie extends StatelessWidget {
  const AnimLottie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Lottie Animation'),
      ),
      body: Center(
          child: LottieBuilder.network(
              'https://assets5.lottiefiles.com/packages/lf20_xmbduf3f.json')

          // LottieBuilder.network(
          //     'https://assets7.lottiefiles.com/packages/lf20_3vbOcw.json'),
          // child: LottieBuilder.network(
          //     'https://assets7.lottiefiles.com/packages/lf20_sycl9imh.json'),
          ),
    );
  }
}
