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
        title:Text("Frequently Asked Questions",style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:320.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text("How can App help me?")),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text("How Old do i have to be to register on app?")),
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
                      SizedBox(width:200,child: Text("How Old do i have to be to register on app?")),
                      Icon(Icons.arrow_drop_down_sharp),
                    ],
                  ),
                  SizedBox(height:10,),
                  Text("Lorem ipsum is simply dummy text of the printing and typesting industry.Larem ipsum has been th eindustry standard dummy taxt ever since the 1500s,when an unknown printer took a galley of survived not only five centuries,but also the leap into electronic .")
                ],
              ),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:30,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text("How can App help me?")),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20,vertical:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width:200,child: Text("How Old do i have to be to register on app?")),
                Icon(Icons.arrow_drop_down_sharp),
              ],
            )),
          ),
        ],
      ),
    );
  }
}