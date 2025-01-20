import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';

class MeditationMusic extends StatelessWidget{
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios_outlined)),
        title:Text("Meditation Music",style:mTextStyle14(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          SizedBox(height:30,),
          /// logo container
          FittedBox(
            child: Center(
              child: Container(
                width:300,
                height:350,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  color:Color(0xfff3BA6EA),
                ),
                child:Center(child:Icon(Icons.music_note,color:Colors.white,size:100,),),
              ),
            ),
          ),
          SizedBox(
            height:10,
          ),
          Text("Happy Meditation For Relaxing",style:mTextStyle16(),),
          SizedBox(
            height:10,
          ),
          /// play button
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              /// pri button
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,color: Colors.grey,size:50,)),
              /// play button
              StatefulBuilder(builder:(context, setState) {
                return Container(
                  width: 80,
                  height:80,
                  decoration:BoxDecoration(
                      shape:BoxShape.circle,
                      color: Color(0xfff3BA6EA)
                  ),
                  child:Center(child:IconButton(onPressed:(){
                    isClicked=!isClicked;
                    setState((){});
                  }, icon:isClicked?Icon(Icons.pause,color:Colors.white,size:50,):Icon(Icons.play_arrow,color:Colors.white,size:50,)),),
                );
              },),
              /// next button
              IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,color: Colors.grey,size:50,))
            ],
          ),
          SizedBox(
            height:20,
          ),
          /// seek bar
          Image.asset("assert/resources ic and im/seek_bar_ic.png",width:double.infinity,fit:BoxFit.cover,),
          /// timer
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("00:00",style:mTextStyle14(mFontWeight:FontWeight.normal,mFontColors:Colors.grey),),
                Text("08:00",style:mTextStyle14(mFontColors:Colors.grey,mFontWeight:FontWeight.normal),)
              ],
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.height<844?MediaQuery.of(context).size.height*0.0:MediaQuery.of(context).size.height*0.1,),
         /// ads container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Container(
              width:double.infinity,
              height:100,
              color: Colors.grey,
              child:Center(child: Text("ADS",style:mTextStyle20(),),),
            ),
          )

        ],
      ),
    );
  }
}