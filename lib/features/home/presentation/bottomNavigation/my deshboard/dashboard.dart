import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/contact%20support/contact_support.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/frequently%20asked%20questions/frequently_askes_questions.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/langiage/language_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/message%20center/message_center.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/profile/profile_screen.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';
import '../../../boardings/widgets/CoustomCircleContainer.dart';

class Dashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("dashboard.heading"),style: mTextStyle16(),),
        centerTitle:true,
      ),
      body: ListView.builder(
          itemCount:Resource.dashbordList.length,
          itemBuilder:(_,index){
        return   InkWell(
          onTap:(){
           navigator(index, context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:double.infinity, height:50.0, child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
              child: Row(
                children: [
                  Coustomcirclecontainer(width: 50.0, height:50.0, child:Image.asset(Resource.dashbordList[index]['icon'])),
                  SizedBox(width:50,),
                  Text("${Resource.dashbordList[index]['title']}")
                ],
              ),
            )),
          ),
        );
      })
    );
  }
  /// navigator function
void navigator(int index,BuildContext context){
    if(index==0){
      Navigator.push(context,MaterialPageRoute(builder: (context) =>ProfileScreen(),));
    }else if(index==1){
      Navigator.push(context,MaterialPageRoute(builder:(context) =>MessageCenter(),));
    }else if(index==2){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>LanguageScreen(),));
    }else if(index==3){

    }else if(index==4){
      Navigator.push(context,MaterialPageRoute(builder:(context) =>FrequentlyAskesQuestions(),));
    }else if(index==5){
      Navigator.push(context, MaterialPageRoute(builder: (context) =>ContactSupport(),));
    }
}
}