import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class ContactSupport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text("Contact Support",style:mTextStyle16(),),
        centerTitle:true,
      ),
      body: Column(
        children: [

          Center(
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:250.0, child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:15),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        width:300,
                        height:50,
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color:Colors.white,
                        ),
                        child: Center(
                          child: DropdownMenu(dropdownMenuEntries:Resource.categoryList.map((e)=>DropdownMenuEntry(value:e, label:e)).toList(),onSelected:(value){
                            print(value);
                          },hintText:"Select a help Category",width:250.0,inputDecorationTheme:InputDecorationTheme(
                              border:InputBorder.none
                          ),),
                        ),
                      ),
                      SizedBox(height:10,),
                      CoustomContainer(color:Colors.white,width:300.0, height:150.0, child:Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10),
                        child: TextField(
                          maxLines:4,
                          decoration:InputDecoration(
                            border:InputBorder.none,
                            hintText:"Type A Message....",
                          ),
                        ),
                      )),

                    ],
                  ),
                  Align(
                      alignment:Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom:40),
                        child: TextButton(onPressed:(){},style:TextButton.styleFrom(minimumSize:Size(200, 40),backgroundColor:Color(0xfff3BA6EA)),child:Text("SUBMIT",style:mTextStyle14(mFontColors:Colors.white),)),
                      ))
                ],
              ),
            )),
          ),

        ],
      ),
    );
  }
}