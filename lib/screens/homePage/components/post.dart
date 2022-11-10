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

  bool isPressing = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 37.0,
                        width: 37.0,
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(30.0),
                          image: const DecorationImage(
                            image: AssetImage('asset/image/profile.png'),
                            fit: BoxFit.fill
                            ),
                         ),
                      ),
                      const SizedBox(width: 5.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "StarBucks",
                            style: TextStyle(
                              fontSize: 21.0,
                            ),
                          ),
                          Text(
                            "33 minutes ago",
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: const Icon(
                      Icons.more_vert,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              width: 390,
              child: const Text(
                "Make Fall your own. Try your Iced Chai Tea Latte with Pumpkin Cream Cold Foam. 🍂",
                 style: TextStyle(
                  fontSize: 13.0,
                 ),
              ),
            ),
            Container(
              height: 215.0,
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(14.0),
                image: const DecorationImage(
                  image: AssetImage('asset/image/postImage.png'),
                  fit: BoxFit.fill
                ),
              ), 
              child: Center(
                child: Text(widget.text),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,),
              child: Row(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isPressing = !isPressing;
                          });
                        }, 
                        child: Icon(
                          Icons.favorite_border,
                          size: 18.0,
                          color: !isPressing? Colors.grey:Colors.pinkAccent,
                          )
                      ),
                      const Text(
                        "12K",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5.0,),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){}, 
                        child: const Icon(
                          Icons.chat_bubble_outline_outlined,
                          size: 18.0,
                          color: Colors.grey,
                          )
                      ),
                      const Text(
                        "256",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
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