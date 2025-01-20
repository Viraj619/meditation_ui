import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/boardings/boarding_6.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class Boarding5 extends StatefulWidget{
  @override
  State<Boarding5> createState() => _Boarding5State();
}

class _Boarding5State extends State<Boarding5> {

  var currentIndex=0;
  List<int> selectionIndex= [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Container(
                width:220,
                child: Text("What's your main goal for using this app?",textAlign:TextAlign.center,style:mTextStyle20(),),
              ),
            ),
            SizedBox(height:5),
            Container(
              width:190,
              child: Text("Select as many choice as you want",textAlign:TextAlign.center,style:mTextStyle14(mFontWeight:FontWeight.normal),),
            ),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.9,
          height:500,
          child: ListView.builder(
              shrinkWrap:true,
              physics:NeverScrollableScrollPhysics(),
              itemCount:Resource.choiceList.length,
              itemBuilder:(_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical:5),
                  child: InkWell(
                      onTap:(){
                        currentIndex=index;
                        setState((){});
                      },
                      child: CoustomContainer(border:Border.all(color:currentIndex==index?Color(0xfff3BA6EA):Color(0xfffEAF2F8)),width:300.0, height:50.0, child:Center(child:Text("${Resource.choiceList[index]['title']}"),))),
                );
              }),
        ),
           SizedBox(height:MediaQuery.of(context).size.height>784?MediaQuery.of(context).size.height*0.1:MediaQuery.of(context).size.height*0.0,),
            Padding(
              padding: const EdgeInsets.only(bottom:15),
              child: CoustomButton(width:300.0, height:50.0, child:TextButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Boarding6(),));
              }, child:Text("COUNTINUE",style:mTextStyle16(mFontColors:Colors.white),)), color:Color(0xfff3BA6EA)),
            ),
          ],
        ),
      ),
    );
  }
}