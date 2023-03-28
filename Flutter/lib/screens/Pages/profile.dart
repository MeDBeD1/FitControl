import 'package:flutter/material.dart';

import '../../services/auth.dart';
import '../auth/signup.dart';

class UserProfile extends StatelessWidget {
  const UserProfile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'FitControl',
                    style: TextStyle(color: Colors.black)
                ),
              ]
          )),
      body: Center(child:
          ElevatedButton(
            child: Text('Logout'),
            onPressed: () async => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp())
              )
            },
          )

      ),
    );
  }
}