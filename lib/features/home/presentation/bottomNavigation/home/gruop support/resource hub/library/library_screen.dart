import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/gruop%20support/resource%20hub/library/details%20screen/details_screen.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';

class LibraryScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_rounded)),
        title:Text(tr("library.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:ListView.builder(
          itemCount:Resource.resourcehub.length,
          itemBuilder:(_,index){
        return InkWell(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder:(context) => DetailsScreen(mIndex: index),));
            },
            child: HomeCard(image:Image.asset(Resource.resourcehub[index]["image"],width:100,),child:Padding(
              padding: const EdgeInsets.symmetric(vertical:30),
              child: Text("${Resource.resourcehub[index]['title']}",style:mTextStyle16(),),
            )));
      }),
    );
  }
}