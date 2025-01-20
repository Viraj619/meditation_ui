import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/journal%20streak/add%20journal/add_journal.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class JournalStreakScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: Text(tr("addJournal.heading")),
        centerTitle:true,
      ),
      body:Column(children: [
        Text(tr("addJournal.date"),style:mTextStyle16(),),
        /// calendar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Container(
            height:100,
            child:ListView.builder(
                scrollDirection:Axis.horizontal,
                itemCount:Resource.calenderList.length,
                itemBuilder:(_,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal:5,vertical:15),
                    child: CoustomCalendar(title:Text(tr("addJournal.month"),style:mTextStyle14(mFontColors: Colors.white,mFontWeight:FontWeight.normal),), date:Text("${Resource.calenderList[index]['date']}",style:mTextStyle16(),), day:Text("${Resource.calenderList[index]['day']}",)),
                  );
                }),
          ),
        ),
        SizedBox(height:10,),
        Text(tr("addJournal.title"),style:mTextStyle16(),),
        SizedBox(height:10,),
        Text(tr("addJournal.subTitle")),
        SizedBox(height:10,),
        Image.asset("assert/journal ic/calendar_ic.png"),
        Text(tr("addJournal.dec")),
        SizedBox(height:10,),
        InkWell(
          onTap:(){
            Navigator.push(context,MaterialPageRoute(builder: (context) =>AddJournal(),));
          },
          child: Container(width: 150,
              height: 40,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                color:Color(0xfffEAF2F8)
              ),
              child:Row(
                mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                children: [
            Icon(Icons.add),
            Text(tr("addJournal.button"))
          ],)),
        )

      ],),
    );
  }
}