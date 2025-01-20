import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';

class MessageCenter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text("Message Center",style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Center(child:Text("No Records Found",style:mTextStyle16(),),),
    );
  }
}