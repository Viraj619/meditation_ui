import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';

class VideoScreen extends StatelessWidget{
  bool isClicked=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width:double.infinity,
        height:double.infinity,
        decoration:BoxDecoration(
          image:DecorationImage(image:NetworkImage("https://s3-alpha-sig.figma.com/img/9725/8ebe/ed98c27299be642a99d05c2fb6ade85e?Expires=1737331200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PSVvDtEGU6SLtiGCQFAGQlYXfscJ5aRzUtrIYcxhMkAkaZIQYSm0yRquE25a3jKeYAD2HEGX4LMBqMSEnFprz1Qkp0MNeG-x0xu4gQ3D~xJBToMNbKRaAPVj5wuYiXgmU0IOIK1rGi5EFGmIWRJtIXv0r0dkKFbP6HCHjFXz6JxT0oDTiU4o2qrgP~25YmMBK4f6WCjZwKkuHjhFvaNULw3oCH-~nn5SNJYXR3nKuypR3mJhpmqzZB~uvFiyLdDFIjlv9Hq8jukefoUC1Qbb5Fd5811YwlCD17N4-OobWZb3CwNe~njLxAsj2hTGBDGoyNqXwTyNSP3l1yYSllHLYA__"),fit: BoxFit.cover)
        ),
        child:Stack(
          children: [
            /// back button and title
            Align(
              alignment:Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(right: 90,top:50),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon:Icon(Icons.arrow_back_ios_rounded,color: Colors.white,)),
                  SizedBox(width:50,),
                  Text("5 Minute Meditation",style:mTextStyle14(mFontColors:Colors.white),)
                ],),
              ),
            ),
            /// seek bar
            Align(
              alignment:Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom:70),
                  child: Image.asset("assert/resources ic and im/seek_bar_ic.png",width:double.infinity,fit:BoxFit.cover,),
                )),
            /// timer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10,vertical:40),
              child: Align(
                alignment:Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("00:00",style:mTextStyle14(mFontWeight:FontWeight.normal,mFontColors:Colors.white),),
                    Text("08:00",style:mTextStyle14(mFontColors:Colors.white,mFontWeight:FontWeight.normal),)
                  ],
                ),
              ),
            ),
            /// pause button
            Align(
              alignment:Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom:0),
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration:BoxDecoration(
                    color:Color(0xfffEAF2F8).withOpacity(0.20),
                  ),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      /// pri button
                      IconButton(onPressed:(){}, icon: Icon(Icons.skip_previous,color:Colors.white,size:50,)),
                      /// play button
                      StatefulBuilder(builder:(context, setState) {
                        return Container(
                          width:100,
                          height: 100,
                          decoration:BoxDecoration(
                            shape:BoxShape.circle,
                            color:Color(0xfff3BA6EA),
                          ),
                          child:Center(child:IconButton(onPressed: (){
                            isClicked=!isClicked;
                            setState((){});
                          }, icon:isClicked?Icon(Icons.play_arrow,color:Colors.white,size:50,):Icon(Icons.pause,color:Colors.white,size:50,))),
                        );
                      },),
                      /// next button
                      IconButton(onPressed:(){}, icon: Icon(Icons.skip_next,color:Colors.white,size:50,)),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}