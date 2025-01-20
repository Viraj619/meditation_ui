import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/self%20help/self%20resource/Meditation/meditation_music/meditation_music.dart';


class ChooseMusicTracker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("musicTracker.heading"),style:mTextStyle16(),),
        centerTitle:true,
      ),
      body:Container(
        width:double.infinity,
        height:double.infinity,
        child:Column(
          children: [
            /// music
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
                                Text(tr("musicTracker.title"),style:mTextStyle16(),),
                                SizedBox(height: 10,),
                                Container(
                                    width:220,
                                    child:Text(tr("musicTracker.desc"))),
                              ],
                            ),
                          ),
                          SizedBox(width: 50,),
                          /// play button
                          InkWell(
                            onTap:(){
                              Navigator.push(context,MaterialPageRoute(builder:(context) =>MeditationMusic(),));
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
            SizedBox(height:MediaQuery.of(context).size.height>844?MediaQuery.of(context).size.height*0.7:MediaQuery.of(context).size.height*0.6,),
            /// add
            Container(
              width:300,
              height: 100,
              color:Colors.grey,
              child:Center(child: Text("ADS",style:mTextStyle20(),)),
            )
          ],
        ),
      ),
    );
  }
}