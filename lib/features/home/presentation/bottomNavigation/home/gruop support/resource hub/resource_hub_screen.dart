import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/resource%20hub/library/library_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/resource%20hub/resource%20center/choose_states.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class ResourceHubScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("resourceHub.heading"),style:mTextStyle20(),),
        centerTitle:true,
      ),
      body: ListView.builder(
          itemCount:  Resource.resourcehubmain.length,
          itemBuilder:(_,index){
        return InkWell(
            onTap:(){
              navigator(index, context);
            },
            child: HomeCard(image:Image.asset(Resource.resourcehubmain[index]['image']),child:Text("${Resource.resourcehubmain[index]['title']}",style:mTextStyle16(),), child1:Text("${Resource.resourcehubmain[index]['dec']}")));
      })
    );
  }
  /// navigation function
void navigator(int index,BuildContext context){
    if(index==0){
      Navigator.push(context, MaterialPageRoute(builder:(context) => LibraryScreen(),));
    }else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseStates(),));
    }
}
}