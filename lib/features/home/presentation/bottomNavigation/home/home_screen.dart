import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/journal/journal_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/resource%20hub/resource_hub_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/your%20story%20and%20mine/your_story_and_mine.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/resources_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/theropy%20over%20text/theropy_over_text_screen.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){},icon:Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("homeScreen.homeHeading")),
        centerTitle:true,
      ),
      body:Column(
        children: [
          ///horizontal
          FittedBox(
            child: SizedBox(
              width:400,
              height:200,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount:Resource.homeHorizontalList.length,
                  itemBuilder:(_,index){
                return  InkWell(
                    onTap:(){
                      ///  navigator function
                      horizNavigat(index, context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10),
                      child: Homecard1(image:Image.asset(Resource.homeHorizontalList[index]['image']), title:Text("${Resource.homeHorizontalList[index]['title']}",style:mTextStyle16(),), desc:Text('${Resource.homeHorizontalList[index]['dec']}',textAlign: TextAlign.center,style:TextStyle(fontSize: 13),)),
                    )
                );
              }),
            ),
          ),
          SizedBox(width:MediaQuery.of(context).size.height*0.1,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
                alignment:Alignment.centerLeft,
                child: Text(tr("homeScreen.group"),style:mTextStyle16(),)),
          ),
          SizedBox(width:MediaQuery.of(context).size.height*0.1,),
          /// vertical list
          Expanded(child: ListView.builder(
              itemCount:Resource.homeVerticalList.length,
              itemBuilder:(_,index){
            return InkWell(
                onTap:(){
                  gruopSuportList(index, context);
                },
                child: HomeCard(image:Image.asset("${Resource.homeVerticalList[index]['image']}"), child: Text("${Resource.homeVerticalList[index]['title']}",style:mTextStyle16(),), child1:Text("${Resource.homeVerticalList[index]['dec']}")));
          })),
          /// Your Story and Mine
        ],
      ),
    );
  }
  /// horizontal function navigator
void horizNavigat(int index,BuildContext context){
    if(index==0){
       Navigator.push(context, MaterialPageRoute(builder:(context) =>ResourcesScreen(),));
    }else{
      Navigator.push(context, MaterialPageRoute(builder:(context) =>TheropyOverTextScreen(),));
    }
 }

 void gruopSuportList(int index, BuildContext context){
    if(index==0){
      Navigator.push(context,MaterialPageRoute(builder:(context) => YourStoryAndMine(),));
    }else if(index==1){
      Navigator.push(context, MaterialPageRoute(builder: (context) => ResourceHubScreen(),));
    }else if(index==2){
      Navigator.push(context, MaterialPageRoute(builder:(context) => JournalScreen(),));
    }
 }
}