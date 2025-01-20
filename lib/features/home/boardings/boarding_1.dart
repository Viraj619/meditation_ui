import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/boardings/boarding_5.dart';
import 'package:new_flutter_project/features/home/boardings/widgets/CoustomCircleContainer.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class Boarding1 extends StatefulWidget{
  @override
  State<Boarding1> createState() => _Boarding1State();
}
class _Boarding1State extends State<Boarding1>with SingleTickerProviderStateMixin{
  PageController pageController=PageController(initialPage:0);
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller:pageController,onPageChanged:(int index){
                  currentIndex!=index;
                  setState(() {

                  });
              },
                scrollDirection:Axis.horizontal,
                scrollBehavior:ScrollBehavior(),
                itemCount:Resource.boarding.length,
                itemBuilder:(context, index) {
                return  Column(
                  children: [
                    Image.asset(Resource.boarding[index]['image']),
                    ///heading
                    Container(
                      width: 260,
                      child: Text("${Resource.boarding[index]['title']}",textAlign:TextAlign.center,style:mTextStyle20(),),
                    ),
                    /// description
                    Container(
                      width: 260,
                      child: Text("${Resource.boarding[index]['desc']}",textAlign:TextAlign.center,),
                    ),
                  ],  );
              },),
            ),
           /// slider container
            DotsIndicator(dotsCount:Resource.boarding.length,
               position:currentIndex,
               decorator: DotsDecorator(
                activeColor: Colors.blue,
                color: Colors.black38,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            /// button
            showButton(),
          ],
        ),
      ),
    );
  }
  /// button function
  Widget showButton(){
    if(currentIndex==3){
     return Padding(
       padding: const EdgeInsets.symmetric(vertical:10),
       child: CoustomButton(width: 300.0, height:50.0,child:TextButton(onPressed: (){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Boarding5(),));
        },child: Text("Next",style:mTextStyle14(mFontColors:Colors.white),),)),
     );
    }else{
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
            /// skip button
            TextButton(onPressed: (){
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Boarding5(),));
            }, child: Text("Skip",style:mTextStyle14(),)),
            ///  next button
            Coustomcirclecontainer(width:50.0, height:50.0, child:IconButton(onPressed: (){
              setState(() {
                currentIndex++;
                pageController.jumpToPage(currentIndex);
              });
            },icon:Transform.rotate(
                angle: 600,
                child: Icon(Icons.arrow_back_rounded,color:Colors.white,)),
            ))
          ],),
      );
    }
  }
}