import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class YourStoryAndMine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_new_rounded)),
        title:Text(tr("yourStoryAndMine.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount:Resource.data.length,
                itemBuilder:(_,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical:10),
                child: CoustomContainer(color:Color(0xfffEAF2F8),width:double.infinity, height:250.0, child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10,vertical:5),
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text("${Resource.data[index]['title']}",style:mTextStyle14(mFontColors:Colors.blueAccent),),
                              Text("${Resource.data[index]['subtitle']}",style:TextStyle(fontSize:12,fontWeight:FontWeight.bold),),

                              Text("${Resource.data[index]['poem']}"),
                            ],
                          ),
                          Text("${Resource.data[index]['days']}")
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Text("${Resource.data[index]['des']}"),
                    ),
                  ],
                )),
              );
            }),
          )
        ],
      ),
    );
  }
}