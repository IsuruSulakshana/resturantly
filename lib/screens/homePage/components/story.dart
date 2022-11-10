import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({
    Key? key,
  }) : super(key: key);

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.008),
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.only(left: area * (5 / 17), top: area * (5 / 17)),
            width: area * (132 / 17),
            height: area * (192 / 17),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 228, 18, 244),
                    Color.fromARGB(255, 184, 1, 166),
                    Color.fromARGB(255, 129, 4, 151),
                    Color.fromARGB(255, 214, 116, 252),
                  ],
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(area * (2 / 17)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    10.0
                  ),
                ),
                child: Center(
                  child: Container(
                    width: area * (120 / 17),
                    height: area * (180 / 17),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      image: const DecorationImage(
                          image: AssetImage('asset/image/storyImage.png'),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(area*(2/17)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "KFC",
                            style: TextStyle(
                              fontSize: area*(20/17),
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "120 meters",
                            style: TextStyle(
                              fontSize: area*(14/17),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(
              height: area*(39/17),
              width: area*(39/17),
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
