import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/boardings/boading_7.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class Boarding6 extends StatefulWidget{
  @override
  State<Boarding6> createState() => _Boarding6State();
}

class _Boarding6State extends State<Boarding6> {
  Color color=Colors.black;
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body:Column(
        children: [
        SizedBox(height: 40,),
        /// text contain
        Center(
          child: Container(
            width: 250,
            child:Text("How Many Minutes can You dedicate daily to your mental wellness?",textAlign:TextAlign.center,style:mTextStyle20(),),
          ),
        ),
        SizedBox(height:10,),
        /// minutes buttons
          StatefulBuilder(builder: (context, setState) {
            return ListView.builder(
                shrinkWrap:true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:Resource.minutesList.length,
                itemBuilder:(_,index){
                  return InkWell(
                      onTap:(){
                      currentIndex=index;
                      setState((){});
                      },
                      child: CoustomContainer(border:Border.all(color:currentIndex==index?Color(0xfff3BA6EA):Color(0xfffEAF2F8)),width:300.0, height:50.0, child:Center(child:Text("${Resource.minutesList[index]['title']}"),)));
                });
          },),
          SizedBox(height:MediaQuery.of(context).size.height>784?MediaQuery.of(context).size.height*0.4:MediaQuery.of(context).size.height*0.3,),
          /// start button
        CoustomButton(width: 300.0, height: 50.0, child:TextButton(onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>Boading7(),));
        }, child: Text("LET'S START",style:mTextStyle16(mFontColors:Colors.white),)), color:Color(0xfff3BA6EA)),
      ],),
    ));
  }
}