import 'package:easy_localization/easy_localization.dart';
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
        title:Text(tr("messageCenter.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Center(child:Text(tr("messageCenter.title"),style:mTextStyle16(),),),
    );
  }
}