import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:comment_box/comment/comment.dart';
import 'package:comment_box/comment/test.dart';
import 'package:comment_box/main.dart';

class Post extends StatefulWidget {
  const Post({Key? key,}) : super(key: key);
  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isPressing = false;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;
    return Padding(
      padding: EdgeInsets.all(area),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      height: area * (39 / 17),
                      width: area * (39 / 17),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: const DecorationImage(
                            image: AssetImage('asset/image/profile.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.02,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "StarBucks",
                          style: TextStyle(
                            fontSize: area * (21 / 17),
                          ),
                        ),
                        Text(
                          "33 minutes ago",
                          style: TextStyle(
                            fontSize: area * (11 / 17),
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.more_vert,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight*0.008),
              child: Text(
                "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
                style: TextStyle(
                  fontSize: area*(13/17),
                ),
              ),
            ),
            Container(
              height: screenHeight*0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: const DecorationImage(
                    image: AssetImage(
                      'asset/image/postImage.png'
                      ),
                    fit: BoxFit.fill,
                  ),
               ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight*0.01,
              ),
              child: Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isPressing = !isPressing;
                            });
                          },
                          child: Icon(
                            Icons.favorite_border,
                            size: 18.0,
                            color:
                                !isPressing ? const Color.fromARGB(255, 137, 137, 137) : Color.fromARGB(255, 255, 37, 110),
                          )),
                      const Text(
                        "12K",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromARGB(255, 137, 137, 137),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth*0.02,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            
                          },
                          child: Icon(
                            Icons.chat_bubble_outline_outlined,
                            size: area*(18/17),
                            color: const Color.fromARGB(255, 137, 137, 137),
                          )),
                      Text(
                        "256",
                        style: TextStyle(
                          fontSize: area*(12/17),
                          color: const Color.fromARGB(255, 137, 137, 137),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
