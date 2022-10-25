

import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        //backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Text('Login to your account', style: TextStyle(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  label: const Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 10),
              child: TextField(
                obscuringCharacter: '*',
                obscureText: true,
                decoration: InputDecoration(
                  //hintText: 'Password',
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0),
              child: ElevatedButton(onPressed: (){}, child: Text('Login')),
            ),
            TextButton(onPressed: (){}, child: Text('New User? Register'))
          ],
        ),
      ),
    );
  }
}