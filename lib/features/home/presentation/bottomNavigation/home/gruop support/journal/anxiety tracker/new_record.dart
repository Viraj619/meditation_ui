import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class NewRecord extends StatelessWidget{
  TextEditingController nameController=TextEditingController();
  TextEditingController thoughtsController=TextEditingController();
  TextEditingController copeController=TextEditingController();
  TextEditingController toMySelfController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined)),
        title:Text(tr("newRecord.heading"),style: mTextStyle16(),),
        centerTitle:true,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Text(tr("newRecord.date"),style:mTextStyle14(),),
            SizedBox(height:20,),
            Center(
              child: CoustomContainer(color:Color(0xfffEAF2F8),width:350.0, height:450.0, child:Column(
                children: [
                  SizedBox(height:10,),
                  /// title text field
                  CoustomTextField(controller:nameController, text:tr("newRecord.hintText1"), textInputType:TextInputType.text,color:Colors.white,),
                  SizedBox(height:10,),
                  /// thougthts text field
                  CoustomTextField(controller:thoughtsController, text:tr("newRecord.hintText2"), textInputType: TextInputType.text,color:Colors.white,),
                  SizedBox(height:10,),
                  /// text
                  Align(
                      alignment:Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:30),
                        child: Text(tr("newRecord.title")),
                      )),
                  SizedBox(height:10,),
                  Image.asset("assert/resources ic and im/seek_bar_ic.png",width:300,),
                  SizedBox(height:10,),
                  /// cope text field
                  CoustomTextField(controller:copeController, text:tr("newRecord.hintText3"), textInputType: TextInputType.text,color:Colors.white,),
                  SizedBox(height:10,),
                  CoustomTextField(controller:toMySelfController, text:tr("newRecord.hintText4"), textInputType: TextInputType.text,color: Colors.white,),
                  SizedBox(height:10,),
                  Align(
                      alignment:Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20),
                        child: Text(tr("newRecord.title2")),
                      )),
                  SizedBox(height:10,),
                  Image.asset("assert/resources ic and im/seek_bar_ic.png",width:300,),
                  SizedBox(height:30,),
                  /// submit button
                  TextButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context) =>NewRecord(),));
                  },style:TextButton.styleFrom(minimumSize:Size(200, 45),backgroundColor:Color(0xfff3BA6EA)),child:Text(tr("newRecord.button"),style:mTextStyle16(mFontColors:Colors.white),))
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}