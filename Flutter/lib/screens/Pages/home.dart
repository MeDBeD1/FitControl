import 'package:flutter/material.dart';

class UserHome extends StatelessWidget {
  const UserHome ({super.key});

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
      body: Center(child: Text('home')),
    );
  }
}


