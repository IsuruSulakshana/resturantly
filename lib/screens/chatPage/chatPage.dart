
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Chat extends StatefulWidget {
  final Image image;
  const Chat({Key? key, required this.image}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      ),
    );
  }
}