

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/boardings/widgets/CoustomCircleContainer.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/anxiety%20tracker/anxiety_tracker.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/goal%20tracker/goal_tracker.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/journal%20streak/journal_streak_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/mood%20tracker/mood_tracker.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';



class JournalScreen extends StatefulWidget{
  @override
  State<JournalScreen> createState() => _JournalScreenState();
}

class _JournalScreenState extends State<JournalScreen> {
  bool isClick=false;

  @override
  Widget build(BuildContext context) {
    print("value is ${isClick}");
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios_sharp),),
        title:Text(tr("journal.heading"),style: mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Center(child: Image.asset("assert/journal ic/journal_ic.png",width:150,height: 100,)),
          /// journal streak
          CoustomContainer(width:300.0, height: 150.0, child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tr("journal.title1"),style:mTextStyle14(),),
                    Coustomcirclecontainer(width:30.0, height:30.0, child:Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color:Colors.white,size:15,)))),
                  ],
                ),
              ),Container(color:Colors.white,width: 250, height: 70, child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5),
                  child: Column(children: [
                    Text("10"),
                    Text("wed"),
                    Coustomcirclecontainer(height: 20.0,width: 20.0,child: Container(),)
                  ],),
                );
              }))
            ],
          ),color:Color(0xfffEAF2F8),),
          /// mood week
          CoustomContainer(width:300.0, height: 150.0, child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tr("journal.title2"),style:mTextStyle14(),),
                    Coustomcirclecontainer(width:30.0, height:30.0, child:Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.add,color:Colors.white,size:15,)))),
                  ],
                ),
              ),Container(color:Colors.white,width: 250, height: 70, child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5),
                  child: Column(children: [
                    Text("10"),
                    Text("wed"),
                    Coustomcirclecontainer(height: 20.0,width: 20.0,child: Container(),)
                  ],),
                );
              }))
            ],
          ),color:Color(0xfffEAF2F8),),

          /// goal progress
          CoustomContainer(width:300.0, height: 150.0, child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tr("journal.title3"),style:mTextStyle14(),),
                    Coustomcirclecontainer(width:30.0, height:30.0, child:Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.edit,color:Colors.white,size:15,)))),
                  ],
                ),
              ),Container(color:Colors.white,width: 250, height: 70, child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5),
                  child: Column(children: [
                    Text("10"),
                    Text("wed"),
                    Coustomcirclecontainer(height: 20.0,width: 20.0,child: Container(),)
                  ],),
                );
              }))
            ],
          ),color:Color(0xfffEAF2F8),),
        ],
      ),
      floatingActionButton:Coustomcirclecontainer(height: 50.0,width: 50.0,child:IconButton(onPressed: (){
        isClick=!isClick;
        setState((){});
        Timer(Duration(seconds:3),(){
          isClick=!isClick;
          setState(() {

          });
        });
        /// menu list
        showMenu(context: context, position:RelativeRect.fromLTRB(100, 400, 20, 10), items:[
          /// New Journal Entry
          PopupMenuItem(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>JournalStreakScreen(),));
              },
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coustomcirclecontainer(width:40.0,height:40.0,child:Icon(Icons.event_note_outlined,color: Colors.white,),), Text(tr("journal.menu1"))],)),
          /// Mood Tracker
          PopupMenuItem(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder: (context) => MoodTracker(),));
              },
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coustomcirclecontainer(width:40.0,height:40.0,child:Icon(Icons.emoji_emotions_rounded,color: Colors.white,),), Text(tr("journal.menu2"))],)),
          /// Habit / Goal Tracker
          PopupMenuItem(
              onTap:(){
                Navigator.push(context,MaterialPageRoute(builder:(context) =>GoalTracker(),));
              },
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coustomcirclecontainer(width:40.0,height:40.0,child:Icon(Icons.radar,color: Colors.white,),), Text(tr("journal.menu3"))],)),
          /// Anxiety Traker
          PopupMenuItem(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnxietyTracker(),));
              },
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Coustomcirclecontainer(width:40.0,height:40.0,child:Icon(Icons.wb_incandescent_outlined,color: Colors.white,),),
                  Text(tr("journal.menu4"))
                ],
              )),
        ],color:Colors.white.withOpacity(0.80));
      }, icon:isClick?Icon(Icons.close,color:Colors.white,):Icon(Icons.add,color:Colors.white,)) ,),
    );
  }
}