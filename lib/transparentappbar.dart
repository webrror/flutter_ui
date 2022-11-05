import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TransparentAppBar extends StatelessWidget {
  const TransparentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.teal.withOpacity(0.5),
        elevation: 0,
        title: const Text('Transparent'),
      ),
      body: Image.network(
        'https://images.unsplash.com/photo-1666442862651-388dd10111d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80',
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
