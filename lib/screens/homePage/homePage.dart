
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
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          width: 140,
          height: 30,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/icon/restaurantly.png'),
              fit: BoxFit.fill
              ),
            ), 
          ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0,),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.search_rounded,
                size: 26.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0,),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.grid_view_sharp,
                size: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _post.length,
                itemBuilder: (context, index){
                  return Story();
                }
              ),
            ),
          ),
          Container(
            height: 50.0,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "0",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0
                    ),
                  ),
                  SizedBox(
                    width: 340,
                    child: Slider(
                      value: _initValue.toDouble(), 
                      min: 1.0,
                      max: 1000.0,
                      label: "100 m",
                      activeColor: const Color.fromARGB(255, 117, 99, 177),
                      inactiveColor: Color.fromARGB(255, 130, 208, 252),
                      onChanged: (double newValue){
                        setState(() {
                          _initValue = newValue.round();
                        });
                      },
                    ),
                  ),
                  const Text(
                    "1000",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                SizedBox(
                height: 480.0,
                child: ListView.builder(
                  itemCount: _post.length,
                  itemBuilder: (context, index){
                    return Post(text: _post[index]);
                  },
                ),
              ),
              Positioned(
                right: 30,
                bottom: 60,
                child: Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 117, 99, 177),
                      borderRadius: BorderRadius.circular(12.0,)
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: (){},
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


