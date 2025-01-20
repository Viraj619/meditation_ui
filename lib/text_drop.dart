import 'dart:async';

import 'package:flutter/material.dart';

class TextDrop extends StatefulWidget{
  @override
  State<TextDrop> createState() => _TextDropState();
}
class _TextDropState extends State<TextDrop> {
  bool isClicked=false;
  double height=100;
  @override
  Widget build(BuildContext context) {
    print("is cliekd${isClicked}");
    print("is height${height}");
    return Scaffold(
      body:Center(
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 300,
              height:height,
              color:Colors.orange,
            ),
            SizedBox(width:50,),
            IconButton(onPressed:(){
              isClicked=!isClicked;
              height=300;
              setState(() {
              });
            },icon:isClicked?Icon(Icons.arrow_drop_down_outlined,):Icon(Icons.arrow_drop_up_outlined,),)
          ],
        ),
      ),
    );
  }
}