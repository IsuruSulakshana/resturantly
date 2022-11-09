import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Story extends StatefulWidget {
  const Story({Key? key,}) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
            width: 130.0,
            height: 190.0,
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromARGB(255, 27, 7, 156),
                      Color.fromARGB(255, 140, 26, 160),
                      Color.fromARGB(255, 174, 71, 163),
                    ],
                  ),
                  border: Border.all(
                      width: 3.0, color: Color.fromARGB(255, 127, 67, 230))),
              child: Center(
                child: Container(
                  width: 115,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(
                      8.0,
                    ),
                    image: const DecorationImage(
                        image: AssetImage('asset/image/storyImage.png'),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "KFC",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "120 meters",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(
              height: 37.0,
              width: 37.0,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  color: Colors.deepPurpleAccent,
                  width: 1.0,
                ),
                image: const DecorationImage(
                    image: AssetImage('asset/image/logoImage.png'),
                    fit: BoxFit.fill),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
