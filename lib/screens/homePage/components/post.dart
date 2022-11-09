import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Post extends StatefulWidget {

  final String text;

  const Post({Key? key, 
  required this.text}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Text(widget.text),
        ),
      ),
    );
  }
}