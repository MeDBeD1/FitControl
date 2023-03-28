import 'package:fit_control/screens/post/add.dart';
import 'package:flutter/material.dart';

import 'Pages/home.dart';
import 'auth/signup.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = 'Kalambet';

    if (user == null) {
       return SignUp();
    }

    return MaterialApp(
      initialRoute: '/',

      routes: {
        '/' : (context) => UserHome(),
        '/add' : (context) => Add()
      },
    );
  }}