import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/anxiety%20tracker/new_record.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class AnxietyTracker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined)),
        title:Text(tr("anxietyTracker.heading"),style: mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Text(tr("anxietyTracker.date")),
          SizedBox(height:10,),
          /// date list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Container(
              height:100,
              child:ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemBuilder:(_,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal:5,vertical:15),
                      child: CoustomCalendar(title:Text("Dec"), date:Text(Resource.calenderList[index]['date']), day:Text(Resource.calenderList[index][ 'day'])),
                    );
                  }),
            ),
          ),
          Text(tr("anxietyTracker.title"),style:mTextStyle16(),),
          SizedBox(height:10,),
          Text(tr("anxietyTracker.subTitle")),
          SizedBox(height:10,),
          Image.asset("assert/journal ic/anxiety_ic.png"),
          SizedBox(height:10,),
          Text(tr("anxietyTracker.record"),style:mTextStyle14(),),
          SizedBox(height:10,),
          TextButton(onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context) =>NewRecord(),));
          },style:TextButton.styleFrom(minimumSize:Size(200, 45),backgroundColor:Color(0xfff3BA6EA)),child:Text(tr("anxietyTracker.button"),style:mTextStyle16(mFontColors:Colors.white),))
        ],
      ),
    );
  }
}