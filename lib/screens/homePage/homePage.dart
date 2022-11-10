import 'package:flutter/material.dart';
import 'package:resturantly/screens/homePage/components/post.dart';
import 'package:resturantly/screens/homePage/components/story.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _initValue = 6;
  final List _post = [
    "post 1",
    "post 2",
    "post 3",
    "post 4",
    "post 5",
    "post 6",
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight * screenWidth) / 20000;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Container(
          width: 140,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/icon/restaurantly.png'),
                fit: BoxFit.fill),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search_rounded,
                    size: 26.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: screenWidth*0.00,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 17.0,
                    width: 16.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('asset/icon/viewBox.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return const Story();
              }
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0",
                style: TextStyle(
                  fontSize: area * (12 / 17),
                  color: const Color.fromARGB(255, 129, 129, 129),
                ),
              ),
              SizedBox(
                width: screenWidth * 0.82,
                child: Slider(
                  value: _initValue.toDouble(),
                  min: 1.0,
                  max: 1000.0,
                  label: "100 m",
                  activeColor: const Color.fromARGB(255, 117, 99, 177),
                  inactiveColor: const Color.fromARGB(255, 130, 208, 252),
                  onChanged: (double newValue) {
                    setState(() {
                      _initValue = newValue.round();
                    });
                  },
                ),
              ),
              Text(
                "1000",
                style: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                    fontSize: area * (12 / 17)),
              ),
            ],
          ),
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                ListView.builder(
                  itemCount: _post.length,
                  itemBuilder: (context, index) {
                    return const Post();
                  },
                ),
                Positioned(
                  right: area * (30 / 17),
                  bottom: area * (60 / 17),
                  child: Container(
                    height: area * (60 / 17),
                    width: area * (60 / 17),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 117, 99, 177),
                        borderRadius: BorderRadius.circular(
                          12.0,
                        )),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Image(
                          image: AssetImage(
                            'asset/icon/chat.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
