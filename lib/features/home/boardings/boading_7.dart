import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/boardings/boading_8.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class Boading7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:Scaffold(
      body: Column(
        children: [
          SizedBox(height:50,),
          Padding(
            padding: const EdgeInsets.only(right:70.0),
            child: CoustomContainer(width:250.0, height:100.0, color:Color(0xfff3BA6EA).withOpacity(0.2), child:Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Hello, Welcome to the able mind.we are on your side.let us help you find the support you deserve."),
            )),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right:70),
            child: CoustomContainer(width:250.0, height:50.0, child:Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("Let's start ny taking two minutes to get to know you better"),
            ), color:Color(0xfff3BA6EA).withOpacity(0.2)),
          ),
          SizedBox(height:MediaQuery.of(context).size.height>784?MediaQuery.of(context).size.height*0.6:MediaQuery.of(context).size.height*0.5,),

          /// Go Button
          Center(child: CoustomButton(width:300.0, height:50.0, child:TextButton(onPressed:(){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Boading8(),));
          }, child:Text("GO",style:mTextStyle16(mFontColors:Colors.white),)), color:Color(0xfff3BA6EA))),
        ],
      ),
    ));
  }
}