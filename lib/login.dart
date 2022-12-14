import 'package:flutter/material.dart';
import 'package:flutter_application_1/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passView = true;
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
              child: Text(
                'Login to your account',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    label: const Text('Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                obscuringCharacter: '*',
                obscureText: _passView,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_person_rounded),
                    suffixIcon: IconButton(
                      tooltip: 'Password visibility',
                      onPressed: () {
                        setState(() {
                          _passView ? _passView = false : _passView = true;
                        });
                      },
                      icon: _passView
                          ? const Icon(Icons.remove_red_eye_rounded)
                          : const Icon(Icons.visibility_off_rounded),
                    ),
                    //hintText: 'Password',
                    label: const Text('Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      //padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text('Login'),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Register()));
                },
                child: Text('New User? Register'))
          ],
        ),
      ),
    );
  }
}
