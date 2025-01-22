import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class LanguageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    int currentIndex=0;
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text(tr("language.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body: Column(
        children: [
          SizedBox( height:10,),
          StatefulBuilder(builder:(context, setState) {
            return  Expanded(
              child: ListView.builder(
                  itemCount:Resource.languageList.length,
                  itemBuilder:(_,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal:30,vertical:10),
                      child: InkWell(
                          onTap:(){
                            currentIndex=index;
                            localization(index, context);
                            setState((){});
                          },
                          child: CoustomContainer(border:Border.all(color:currentIndex==index?Color(0xfff3BA6EA):Color(0xfffEAF2F8)),color:Color(0xfffEAF2F8),width:300.0, height:50.0, child:Center(child:Text("${Resource.languageList[index]}"),))),
                    );
                  }),
            );
          },),

        ],
      ),
    );
  }
  void localization(int index,BuildContext context){
    if(index==0){
      context.locale=Locale('en');
    }else if(index==1){
      context.locale = Locale('hi');
    }else if(index==2){
      context.locale=Locale('gu');
    }
  }
}