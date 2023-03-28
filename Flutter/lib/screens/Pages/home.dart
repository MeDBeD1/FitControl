import 'package:flutter/material.dart';

import '../../services/posts.dart';
import '../post/add.dart';

class UserHome extends StatefulWidget {
  const UserHome({Key? key}) : super(key: key);

  @override
  _UserHomeState createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {

  List<Map<String, String>> postData = [
    {'username': 'John Doe', 'post': 'Hello, world!'},
    {'username': 'Jane Smith', 'post': 'Welcome to my blog!'},
    {'username': 'Bob Johnson', 'post': 'I love Flutter!'},
  ];
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
      body: ListView.builder(
        itemCount: postData.length,
        itemBuilder: (context, index) {
          return TwitterPost(
            userName: postData[index]['userName']!,
            handle: postData[index]['handle']!,
            text: postData[index]['text']!,
            imageUrl: postData[index]['imageUrl']!,
          );
        },
      ),
      floatingActionButton: SizedBox(
        height: 100.0,
        width: 100.0,
        child:
        FloatingActionButton(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Add()));
          },
          child: Icon(Icons.add, size: 70.0),
      ),
      ),
    );
  }
}

