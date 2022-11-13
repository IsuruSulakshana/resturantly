import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

class SearchBar extends StatefulWidget {
  final TextEditingController input;
 
  const SearchBar({Key? key, 
  required this.input,}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  bool isPressing = false;
  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    double area = (screenHeight*screenWidth)/20000;

    return Container(
      width: screenWidth*0.95,
      child: Column(
        children: <Widget>[
          Container(
            height: screenHeight*0.065,
            child: TextField(
              style: TextStyle(
                fontSize: area*(20/17),
                color: Color.fromARGB(255, 0, 0, 0)
              ),
              controller: widget.input,
              obscureText: false,
              decoration: InputDecoration(
                hintText: "Search Here",
                hintStyle: TextStyle(
                  fontSize: area*(1.1),
                  color: Colors.grey,
                ),
                enabledBorder: const UnderlineInputBorder(      
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 1.0),   
                ),  
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255),width: 1.0),
                ),  
              ),
            ),
          ),
        ],
      ),
    );
  }
}

