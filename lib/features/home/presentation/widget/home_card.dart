import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';


/// for top
class Homecard1 extends StatelessWidget{
  var image;
  var title;
  var desc;
  Homecard1({required this.image,required this.title,required this.desc});
  @override
  Widget build(BuildContext context) {
    return Container(width:171, height:198,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        border:Border.all(color:Color(0xfff3BA6EA)),

      ),
      child:Stack(
      children: [
        Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
           image,
            title,
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 140,
                child: desc,
              ),
            )
          ],),
        Positioned(
          top:190,
          left: 30,
          child: Container(
            width: 100,
            height: 20,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(5),
                color:Color(0xfff3BA6EA)
            ),
          ),
        ),

      ],
    ),);
  }
}
/// for group
class HomeCard extends StatelessWidget{
  var child;
  var child1;
  var image;
  HomeCard({ this.image,required this.child, this.child1,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical:10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(10),
          border:Border.all(color:Color(0xfff3BA6EA)),
        ),
        child:Stack(
          children: [
            FittedBox(
              child: Row(
                children: [
                  image,
                  Column(
                    children: [
                      SizedBox(height:10,),
                      child,
                      Container(
                          width:200,
                          child:child1),
                    ],
                  ),
              
                ],
              ),
            ),
            Align(
              alignment:Alignment.centerRight,
              child: Container(
                width:5,
                height: 60,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.only(topLeft:Radius.circular(5),bottomLeft:Radius.circular(5)),
                  color:Color(0xfff3BA6EA),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/// for calendar
class  CoustomCalendar extends StatelessWidget{
  var title;
  var date;
  var day;
  CoustomCalendar({required this.title,required this.date,required this.day});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:60,
      height:70,
      decoration:BoxDecoration(
        color:Colors.grey.withOpacity(0.10),
        borderRadius:BorderRadius.circular(15),
      ),
      child:Column(
        children: [
          Stack(
            children: [
              Container(
                width:60,
                height:20,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.only(topRight:Radius.circular(15),topLeft:Radius.circular(15)),
                  color:Color(0xfff3BA6EA),
                ),
                child:Center(child: title,),
              )
            ],
          ),
          date,
          FittedBox(child:day,),
        ],
      ),
    );
  }
}