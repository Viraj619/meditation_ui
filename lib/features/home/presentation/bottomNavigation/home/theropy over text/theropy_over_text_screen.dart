import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/boardings/widgets/CoustomCircleContainer.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class TheropyOverTextScreen extends StatelessWidget{
  bool isTapped=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_sharp)),
        title:Text(tr("therapyOverText.heading"),style:mTextStyle20(),),
        centerTitle:true,
      ),
      body:Stack(
        children: [
          /// textField
          Align(
            alignment:Alignment.bottomCenter,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:15,vertical:30),
              child: Container(
                width:double.infinity,
                height:300,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:Color(0xfffEAF2F8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:15),
                  child: TextField(
                    maxLines:15,
                    decoration:InputDecoration(
                      hintText:tr("therapyOverText.hintText"),
                      border:InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          /// send button
          Align(
            alignment:Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom:40),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  CoustomButton(width:200.0, height:35.0, child:TextButton(onPressed:(){}, child:Text(tr("therapyOverText.buttonText"),style:mTextStyle14(mFontColors: Colors.white),),),color:Color(0xfff3BA6EA),),
                  SizedBox(width:20,),
                  StatefulBuilder(builder:(context, setState) {
                    return  InkWell(
                        onLongPress:(){
                          Timer(Duration(seconds:5),(){
                            isTapped=!isTapped;
                            setState((){});
                          });

                        },
                        child: isTapped?Coustomcirclecontainer(width:60.0, height:60.0, child:Icon(Icons.mic,size:50,color:Colors.white,)): Coustomcirclecontainer(width:50.0, height:50.0, child:Icon(Icons.mic,color:Colors.white,)));
                  },)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}