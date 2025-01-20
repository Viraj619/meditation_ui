import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/Meditation/deep%20relaxing/video_tracker.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/Meditation/meditation_music/choose_music_tracker.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class MeditationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios_new_rounded)),
        title:Text(tr("meditation.heading"),style:mTextStyle20(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount:Resource.resourceHub.length,
            itemBuilder:(_,index){
                    return InkWell(
              onTap:(){
                /// navigation function
                navigation(index, context);
              },
              child: HomeCard(image:Image.asset(Resource.meditationList[index]['image']), child:Text("${Resource.meditationList[index]['mtitle']}",style:mTextStyle14(),), child1:Text("${Resource.meditationList[index]['mdec']}")));
                  }),
          ),
        ],
      )
    );
  }
  void navigation(int index,BuildContext context){
    if(index==0){
      Navigator.push(context,MaterialPageRoute(builder: (context) => VideoTracker(mIndex: index),));
    }else if(index==1){
      Navigator.push(context,MaterialPageRoute(builder: (context) => ChooseMusicTracker(),));
    }else if(index==2){
      Navigator.push(context,MaterialPageRoute(builder: (context) =>  VideoTracker(mIndex: index,),));
    }else if(index==3){
      Navigator.push(context,MaterialPageRoute(builder: (context) =>  VideoTracker(mIndex:index,),));
    }
  }
}