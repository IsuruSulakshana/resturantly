
import 'package:flutter/material.dart';
import 'package:resturantly/screens/homePage/components/post.dart';

class Home extends StatelessWidget {

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
        title: const Text(
          "Resturantly",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: (context, index){
          return Post(text: _post[index]);
        },
      ),
    );
  }
}


