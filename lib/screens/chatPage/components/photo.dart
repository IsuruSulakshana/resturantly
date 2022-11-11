import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key,}) : super(key: key);
  @override
  State<Photo> createState() => _PhotoState();
}
class _PhotoState extends State<Photo> {

  var image;
  void openCamera() async {
    PickedFile? picked = await ImagePicker().getImage(
        preferredCameraDevice: CameraDevice.front, source: ImageSource.camera);
    setState(() {
      image = File(picked!.path);
    });
  }

   @override
    void initState() {
      super.initState();
      openCamera();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: image != null ? Center(
             child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.file(image),
                RaisedButton(
                  onPressed: (){},
                  child: const Text("Start Chatting"),
                ),
              ],
            ),
          ) : Container(
          ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

