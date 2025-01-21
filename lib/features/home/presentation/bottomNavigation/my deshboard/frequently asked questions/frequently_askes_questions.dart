import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class FrequentlyAskesQuestions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text(tr("askQue.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:320.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text(tr("askQue.title1"))),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text(tr("askQue.title2"))),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:20),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:210.0, child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:10,vertical:5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width:200,child: Text(tr("askQue.title3"))),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                  SizedBox(height:10,),
                  Text(tr("askQue.desc"))
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text(tr("askQue.title4"))),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text(tr("askQue.title5title5"))),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
        ],
      ),
    );
  }
}