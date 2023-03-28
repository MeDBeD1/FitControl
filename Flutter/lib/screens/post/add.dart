import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  _AddState createState() {
    return _AddState();
  }
}

class _AddState extends State<Add> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child:
          AppBar(
            title: Transform.translate(
              offset: Offset(0.0, 10.0),
              child: Text(
              'Создать пост',
              style: TextStyle(
                fontSize: 48.0,
                ),
              ),
            ),
            actions: <Widget> [
            TextButton(
              onPressed: null,
              child: Icon(Icons.check, size: 70),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.grey,
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Form(
          child: TextFormField(
            onChanged: (val) {
              setState(() {
                text = val;
              });
            },
          ),
        )
      ),
    );
  }
}