import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class ChooseStates extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title:Text(tr("selectState.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment:Alignment.bottomCenter,
            child: Container(
              width:250,
              height:50,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(25),
                border:Border.all(color:Color(0xfff3BA6EA))
              ),
              child: Center(
                child: DropdownMenu(dropdownMenuEntries:Resource.stateList.map((e)=>DropdownMenuEntry(value:e, label:e)).toList(),onSelected:(value){
                 print(value);
                },hintText:tr("selectState.hintText"),inputDecorationTheme:InputDecorationTheme(
                  border:InputBorder.none
                ),),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: CoustomButton(width: 300.0, height: 40.0,color: Color(0xfff3BA6EA),child:TextButton(onPressed:(){}, child:Text(tr("selectState.button"),style: mTextStyle16(mFontColors: Colors.white),))),
          )
        ],
      ),
    );
  }
}