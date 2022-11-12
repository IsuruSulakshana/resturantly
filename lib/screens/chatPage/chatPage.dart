
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Chat extends StatefulWidget {
  File image;
  Chat({required this.image});

  @override
  State<Chat> createState() => _ChatState(image);
}

class _ChatState extends State<Chat> {

 File image;
 _ChatState(this.image);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Image.file(image),
        ),
      ),
    );
  }
}