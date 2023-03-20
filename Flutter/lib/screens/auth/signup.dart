import 'dart:ui';

import 'package:fit_control/main.dart';
import 'package:flutter/material.dart';

import '../Pages/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 600,
            width: 600,
            color: Colors.transparent,
            child: Form(
                child: Column(
                  children: [
                    TextFormField(
                    onChanged: (val) => setState(() {
                      email = val;
                    })
                    ),
                    TextFormField(
                      onChanged: (val) => setState(() {
                        password = val;
                      })
                    ),
                     Column(children: [
                        ElevatedButton(
                            child: Text('Login'),
                            onPressed: () async => {
                            Navigator.push(
                               context,
                                MaterialPageRoute(builder: (context) => const HomePage(title: 'FitControl',))
                              )
                            }
                        ),
                      ElevatedButton(
                          child: Text('SignUp'),
                          onPressed: () async => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const HomePage(title: 'FitControl'))
                            )
                          },
                      )
                    ]
                    )
                  ],
                )),
          )
        )
    );
  }
}