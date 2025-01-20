import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/video_screen.dart';

class VideoTracker extends StatelessWidget{
  int mIndex;
  VideoTracker({required this.mIndex});
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("videoTrack.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:getData(context),
    );
  }
  Widget getData(BuildContext context){
    if(mIndex==0){
      return Column(
        children: [
          /// ads
          Center(
            child: Container(
              width: 300,
              height: 150,
              color:Colors.orange,
              child:Center(child: Text("ADS",style:mTextStyle16(),),),
            ),
          ),
          SizedBox(height:10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Container(
              width:double.infinity,
              height: 100,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                border:Border.all(color:Color(0xfff3BA6EA)),
              ),
              child:Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:5),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              Text(tr("videoTrack.title"),style:mTextStyle16(),),
                              SizedBox(height: 10,),
                              Container(
                                  width:220,
                                  child:Text(tr("videoTrack.desc"))),
                            ],
                          ),
                        ),
                        SizedBox(width: 50,),
                        /// play button
                        InkWell(
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:(context) =>VideoScreen(),));
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration:BoxDecoration(
                              shape:BoxShape.circle,
                              color:Color(0xfff3BA6EA),
                            ),
                            child:Icon(Icons.play_arrow,color:Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }else if(mIndex==2 || mIndex==3){
      return Column(
        children: [
          SizedBox(height: 10,),
          Center(
            child:Image.asset("assert/resources ic and im/no_found_data_ic.png"),
          ),
          SizedBox(height: 10,),
          Text("Comming soon"),
          SizedBox(height:MediaQuery.of(context).size.height<=844?MediaQuery.of(context).size.height*0.3:MediaQuery.of(context).size.height*0.4,),
          /// ads
          Container(
            width:300,
            height:100,
            color:Colors.grey,
            child:Center(
              child:Text("ADS",style:mTextStyle20(),),
            ),
          )
        ],
      );
    }else{
      return Container();
    }

  }
}