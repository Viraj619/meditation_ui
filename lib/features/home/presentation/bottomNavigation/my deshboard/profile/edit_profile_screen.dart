import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class EditProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text(tr("editProfile.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          SizedBox(height:20,),
          Center(
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration:InputDecoration(
                  hintText:tr("editProfile.editName"),
                  border:InputBorder.none
                ),
              ),
            )),
          ),

          /// language
          Container(
            width:300,
            height:50,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Color(0xfffEAF2F8),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right:60),
                child: DropdownMenu(dropdownMenuEntries:Resource.languageList.map((e)=>DropdownMenuEntry(value:e, label:e)).toList(),onSelected:(value){
                  print(value);
                },hintText:tr("editProfile.language"),inputDecorationTheme:InputDecorationTheme(
                    border:InputBorder.none
                ),),
              ),
            ),
          ),
          SizedBox(height:10,),
          /// state
          Container(
            width:300,
            height:50,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(10),
              color:Color(0xfffEAF2F8),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(right:60),
                child: DropdownMenu(dropdownMenuEntries:Resource.stateList.map((e)=>DropdownMenuEntry(value:e, label:e)).toList(),onSelected:(value){
                },hintText:tr("editProfile.state"),inputDecorationTheme:InputDecorationTheme(
                    border:InputBorder.none
                ),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}