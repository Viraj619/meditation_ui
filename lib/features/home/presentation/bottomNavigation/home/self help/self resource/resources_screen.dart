import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/Meditation/meditation_music/choose_music_tracker.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/Meditation/meditation_screen.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class ResourcesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_rounded)),
        title:Text(tr("selfResources.heading"),style:mTextStyle20(),),
        centerTitle:true,
      ),
    body:Column(
      children: [
        Expanded(
          child: ListView.builder(
            shrinkWrap:false,
            physics:NeverScrollableScrollPhysics(),
            itemCount:Resource.resourceHub.length,
            itemBuilder:(context, index) {
            return InkWell(
                onTap: (){
                  Navigation(index, context);
                },
                child: HomeCard(image:Image.asset(Resource.resourceHub[index]['image']), child:Text("${Resource.resourceHub[index]['title']}",style:mTextStyle14(),), child1:Text("${Resource.resourceHub[index]['dec']}")));
          },),
        ),
        /// Ads
        Padding(
          padding: const EdgeInsets.symmetric(vertical:10),
          child: Container(
            width: 300,
            height:150,
            color:Colors.orange,
            child:Center(child: Text("ADS",style:mTextStyle20(),)),
          ),
        ),
      ],
    ),
    );
  }
  /// navigation function
 void Navigation(int index,BuildContext context){
    if(index==0){
      Navigator.push(context, MaterialPageRoute(builder:(context) => MeditationScreen(),));
    }else if(index==1){
      Navigator.push(context, MaterialPageRoute(builder:(context) => ChooseMusicTracker(),));
    }else if(index==2){
      Navigator.push(context, MaterialPageRoute(builder:(context) => ChooseMusicTracker(),));
    }else if(index ==3){
      Navigator.push(context, MaterialPageRoute(builder:(context) => ChooseMusicTracker(),));
    }
 }
}