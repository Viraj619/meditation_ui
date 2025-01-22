import 'dart:async';

import 'package:flutter/material.dart';

class TextDrop extends StatefulWidget{
  @override
  State<TextDrop> createState() => _TextDropState();

}
class _TextDropState extends State<TextDrop> {
  TextEditingController texts=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          TextField(
            controller:texts,
          ),
          TextButton(onPressed: (){
            if(texts.text.isNotEmpty){

            }
          }, child: Text("sunmit"))
        ],
      ),
    );
  }
}