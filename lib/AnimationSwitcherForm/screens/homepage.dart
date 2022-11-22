import 'package:flutter/material.dart';
import 'package:flutter_application_1/AnimationSwitcherForm/screens/signuppage.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/signup_with_form.dart';

import 'loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    formVisible = false;
    _formsIndex = 1;
    super.initState();
  }

  late bool formVisible;
  int? _formsIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1604079628040-94301bb21b91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'))),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const SizedBox(
                    height: kToolbarHeight + 80,
                  ),
                  Expanded(
                    child: Column(
                      children: const [
                        Text(
                          "Welcome",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Welcome to this awesome app",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 40),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 1,
                                backgroundColor: Colors.orange[300],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () {
                                setState(() {
                                  formVisible = true;
                                  _formsIndex = 1;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black26,
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )),
                              child: const Text(
                                "Signup",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {
                                  formVisible = true;
                                  _formsIndex = 2;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: !formVisible
                  ? null
                  : Container(
                      color: Colors.black87,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 4,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: _formsIndex == 1
                                            ? Colors.orange[300]
                                            : Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    onPressed: () {
                                      setState(() {
                                        _formsIndex = 1;
                                      });
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          color: _formsIndex == 1
                                              ? Colors.white
                                              : Colors.black),
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 4,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: _formsIndex == 2
                                            ? Colors.orange[300]
                                            : Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50))),
                                    onPressed: () {
                                      setState(() {
                                        _formsIndex = 2;
                                      });
                                    },
                                    child: Text(
                                      'Signup',
                                      style: TextStyle(
                                          color: _formsIndex == 2
                                              ? Colors.white
                                              : Colors.black),
                                    )),
                              )
                            ],
                          ),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 200),
                            // transitionBuilder:
                            //     (Widget child, Animation<double> animation) {
                            //   return ScaleTransition(
                            //       scale: animation, child: child);
                            // },
                            child: _formsIndex == 1
                                ? const LoginPage()
                                : const SignUpPage(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                formVisible = false;
                              });
                            },
                            color: Colors.white,
                            icon: const Icon(
                              Icons.clear,
                            ),
                            iconSize: 32,
                          )
                        ],
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
