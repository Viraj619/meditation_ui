import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/home/boardings/widgets/CoustomCircleContainer.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/bottom_navigation.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class Boading8 extends StatelessWidget{
  TextEditingController userNameController=TextEditingController();
  TextEditingController phoneController=TextEditingController();
  GlobalKey<FormState> formkey=GlobalKey<FormState>();
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    print(height);
    return Form(
      key: formkey,
      child: SafeArea(
        child: Scaffold(
          body:SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Center(child: Text("Almost Done!",style:mTextStyle20(),)),
                Container(
                  width:230,
                  child:Text("Let us setup your basic profile and get started.",textAlign:TextAlign.center,style:mTextStyle14(),),
                ),
                SizedBox(height:10,),
                /// user textField
                CoustomTextFormField(validation:(value) {
                  if(value==null||value.isEmpty){
                    return "Please fill this field";
                  }
                }, controller:userNameController, text:"Enter User Name", textInputType: TextInputType.text,color:Color(0xfff3BA6EA).withOpacity(0.1),),
                SizedBox(height:10,),
                /// mobile number textField
                CoustomTextFormField(validation:(value) {
                  if(value==null || value.isEmpty){
                    return "Please fill the field";
                  }
                }, controller:phoneController, text:"Enter Phone Number", textInputType: TextInputType.text,color:Color(0xfff3BA6EA).withOpacity(0.1),),
                SizedBox(height:10,),
                Text("Select your Gender",style:mTextStyle16(),),
                SizedBox(height:10,),
                /// gender selection
                StatefulBuilder(builder:(context, setState) {
                  return  SizedBox(
                    width: 400,
                      height:100,
                      child:GridView.builder(
                        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:3,mainAxisExtent:100),
                          itemCount:Resource.genderList.length,
                          itemBuilder:(_,index){
                    return InkWell(
                      onTap:(){
                        currentIndex=index;
                        setState((){});
                      },
                      child: CoustomContainer(border:Border.all(color:currentIndex==index?Color(0xfff3BA6EA):Color(0xfffEAF2F8)),width:100.0,height:100.0,child:Column(
                        children: [
                          SizedBox(height:10,),
                          Image.asset(Resource.genderList[index]['image']),
                          Text("${Resource.genderList[index]['gender']}"),
                        ],
                      ), color:Color(0xfff3BA6EA).withOpacity(0.2)),
                    );
                  }));
                },),
                SizedBox(height:10,),
                Text("Select your Age",style:mTextStyle16(),),
                SizedBox(height:10,),
                /// age selection list
                StatefulBuilder(builder:(context, setState) {
                  return Container(
                    width:200,
                    height: 50,
                    decoration:BoxDecoration(
                        borderRadius:BorderRadius.circular(25),
                        color:Color(0xfff3BA6EA).withOpacity(0.2)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView.builder(
                        itemCount:Resource.age.length,
                        scrollDirection:Axis.horizontal,
                        itemBuilder:(context, index) {
                          return
                          InkWell(
                              onTap:(){
                                currentIndex=index;
                                setState((){});
                              },
                              child: Center(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: currentIndex==index?Coustomcirclecontainer(width:30.0, height:30.0, child:Center(child: Text("${Resource.age[index]}")),):Text("${Resource.age[index]}"),
                              )));
                        },),
                    ),
                  );
                },
                ),
                SizedBox(height:MediaQuery.of(context).size.height>784?MediaQuery.of(context).size.height*0.3:MediaQuery.of(context).size.height*0.2,),
                /// start button
                CoustomButton(width:300.0, height:50.0, child:TextButton(onPressed:(){
                  if(formkey.currentState!.validate()){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => BottomNavigation(),));
                  }
            
                }, child:Text("LET'S START",style:mTextStyle14(mFontColors:Colors.white),)), color:Color(0xfff3BA6EA))
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}