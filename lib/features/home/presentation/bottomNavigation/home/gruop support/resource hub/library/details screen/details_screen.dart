import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget{
  int mIndex;
  DetailsScreen({required this.mIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined)),
        /// title
        title:Text("${Resource.resourcehub[mIndex]['title']}",style:mTextStyle16(),),
        centerTitle:true,
      ),
      /// details list
      body:ListView.builder(
          itemCount:Resource.resourcehub.length,
          itemBuilder:(_,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
          child: CoustomContainer(width:300.0, height:130.0, child:Padding(
            padding: const EdgeInsets.symmetric(vertical:10),
            child: Column(
              children: [
                Align(
                    alignment:Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:15),
                      child: Text("${Resource.resourcehub[mIndex]['detail']['title'][index]}",style:mTextStyle16(),),
                    )),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:10),
                  child: Text("${Resource.resourcehub[mIndex]['detail']['dec'][index]}",style:mTextStyle16(mFontWeight:FontWeight.normal),),
                )
              ],
            ),
          ),color:Color(0xfffEAF2F8),),
        );
      }),
    );
  }
}