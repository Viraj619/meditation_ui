import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/presentation/widget/home_card.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class GoalTracker extends StatelessWidget{
  TextEditingController nameController=TextEditingController();
  int currentIndex=0;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        appBar:AppBar(
          leading:IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios_outlined)),
          title:Text(tr("goalTracker.heading"),style: mTextStyle16(),),
          centerTitle:true,
        ),
        body:SingleChildScrollView(
          child: Column(
            children: [
              Text(tr("goalTracker.date")),
              SizedBox(height:10,),
              /// date list
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
                      child: InkWell(
                          onTap:(){

                          },
                          child: CoustomCalendar(title:Text("Dec",style:mTextStyle14(mFontColors: Colors.white,mFontWeight:FontWeight.normal),), date:Text("${Resource.calenderList[index]['date']}",style:mTextStyle16(),), day:Text("${Resource.calenderList[index]['day']}",))),
                    );
                  }),
                ),
              ),
              SizedBox(height:10,),
              Text(tr("goalTracker.level"),style:mTextStyle14(),),
              SizedBox(height:10,),
              /// goal persentage
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: CoustomContainer(height: 100.0,width:double.infinity,child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width:50,
                      height:50,
                      decoration:BoxDecoration(
                        shape:BoxShape.circle,
                          border:Border(top:BorderSide(color:Color(0xfff3BA6EA),width:5,strokeAlign:BorderSide.strokeAlignOutside),left:BorderSide(color:Color(0xfff3BA6EA),width:5,strokeAlign:BorderSide.strokeAlignOutside),bottom:BorderSide(color: Color(0xfff3BA6EA),width: 5,strokeAlign:BorderSide.strokeAlignOutside),right:BorderSide(color:Color(0xfff3BA6EA),width:5,strokeAlign:BorderSide.strokeAlignOutside))
                      ),
                      child:Center(child:Text("30%"),),
                    ),
                    Container(
                      width:150,
                      child:Text(tr("goalTracker.title"),textAlign:TextAlign.center,),
                    ),
                  ],
                ),color:Color(0xfffEAF2F8),),
              ),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: CoustomContainer(height: 100.0,width:double.infinity,child:Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                      child: Row(
                        children: [
                          Text(tr("goalTracker.title1"),style:mTextStyle14(),)
                        ],
                      ),
                    ),
                    Container(
                      width:270,
                      child:Text(tr("goalTracker.subTitle"),textAlign:TextAlign.center,),
                    ),
                  ],
                ),color:Color(0xfffEAF2F8),),
              ),
              SizedBox(height:10,),
              /// add button
              InkWell(
                onTap:(){
                showDialog(context: context, builder: (context) {
                  return  Container(
                    child:Dialog(
                      child:Container(
                        width:300,
                        height:350,
                        child:Column(
            children: [
              Text(tr("goalTracker.title2"),style:mTextStyle14(),),
              Image.asset("assert/journal ic/goal_ic.png"),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: CoustomTextField(controller:nameController, text:tr("goalTracker.hintText"), textInputType: TextInputType.text,color:Color(0xfffEAF2F8),),
              ),
              SizedBox(height:10,),
              /// drop down list
              Align(
                alignment:Alignment.bottomCenter,
                child: Container(
                  width:250,
                  height:50,
                  decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color:Color(0xfffEAF2F8),
                  ),
                  child: Center(
                    child: DropdownMenu(dropdownMenuEntries:Resource.minutes.map((e)=>DropdownMenuEntry(value:e, label:e)).toList(),onSelected:(value){
                      print(value);
                    },hintText:tr("goalTracker.hintText2"),inputDecorationTheme:InputDecorationTheme(
                        border:InputBorder.none
                    ),),
                  ),
                ),
              ),
              SizedBox(height:20,),
              TextButton(onPressed:(){
                Navigator.pop(context);
              },style:TextButton.styleFrom(backgroundColor:Color(0xfff3BA6EA),minimumSize:Size(200,50)), child:Text(tr("goalTracker.button1"),style:mTextStyle16(mFontColors:Colors.white),))
            ],
          ),
                      ),
                    ),

                  );
                },);

                },
                child: CoustomContainer(width:200.0, height:40.0, child:Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                  Icon(Icons.add),
                  Text(tr("goalTracker.button2"))
                ],),color:Color(0xfffEAF2F8),),
              )


            ],
          ),
        ),
      ),
    );
  }
}