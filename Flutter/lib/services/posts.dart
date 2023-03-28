import 'package:flutter/material.dart';


class TwitterPost extends StatelessWidget {
  final String userName;
  final String handle;
  final String text;
  final String imageUrl;


  TwitterPost({
    required this.userName,
    required this.handle,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    handle,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            text,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.mode_comment_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share_outlined),
              ),
            ],
          ),
        ],
      ),
    );
  }
}