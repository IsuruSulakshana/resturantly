import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resturantly/screens/chatPage/chatPage.dart';

class Photo extends StatefulWidget {
  const Photo({
    Key? key,
  }) : super(key: key);
  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  XFile? image;
  File? file;
  void openCamera() async {
    PickedFile? picked = await ImagePicker().getImage(
        preferredCameraDevice: CameraDevice.front, source: ImageSource.camera);
    setState(() {
      image = XFile(picked!.path);
      file = File(picked.path);
    });
  }

  @override
  void initState() {
    super.initState();
    openCamera();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                openCamera();
              });
            },
            icon: Icon(
              Icons.close,
              size: area * (2.0),
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: image != null
            ? Column(
                children: [
                  Container(
                    height: screenHeight * 0.6,
                    child: Image.file(file!),
                  ),
                  SizedBox(
                    height: screenHeight * 0.07,
                  ),
                  Container(
                    width: screenWidth * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: FlatButton(
                      onPressed: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //     builder: (BuildContext context) => Chat(image: image,)));
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => ChatPage(
                                  selfieImage: image,
                                  shopName: "Shop Name",
                                )));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Start Chatting",
                            style: TextStyle(
                              fontSize: area * (19 / 17),
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.01,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: area * (1.4),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : Container(),
      ),
      backgroundColor: Colors.black,
    );
  }
}
