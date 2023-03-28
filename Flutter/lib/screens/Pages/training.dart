import 'package:flutter/material.dart';

class UserTraining extends StatelessWidget {
  const UserTraining ({super.key});

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
      body: Center(child: Text('Train')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        Navigator.pushNamed(context, '/add');
        },
      )
    );
  }
}