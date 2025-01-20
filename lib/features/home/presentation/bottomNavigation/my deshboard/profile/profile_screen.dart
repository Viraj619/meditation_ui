import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/boardings/widgets/CoustomCircleContainer.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/profile/edit_profile_screen.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text("My Profile",style: mTextStyle16(),),
        centerTitle:true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: TextButton(onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder: (context) =>EditProfileScreen(),));
            },style:TextButton.styleFrom(minimumSize:Size(100,30),backgroundColor:Color(0xfff3BA6EA)),child:Text("EDIT PROFILE",style:mTextStyle14(mFontColors:Colors.white,mFontWeight:FontWeight.normal),)),
          )
        ],
      ),
      body:Column(

        children: [
          Center(child: Coustomcirclecontainer(width: 100.0, height: 100.0, child:Image.asset("assert/gender_female.png",fit:BoxFit.cover,))),
          SizedBox(height:10,),
          Text("UserName",style:mTextStyle16(),),
          SizedBox(height:10,),
          CoustomContainer(color:Color(0xfffEAF2F8),width:300.0, height:200.0, child:Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Age: 22",style:mTextStyle14(),),
                SizedBox(height:10,),
                Text("Gender: Female",style:mTextStyle14(),),
                SizedBox(height:10,),
                Text("Preferred Language: English",style:mTextStyle14(),),
                SizedBox(height:30,),
                Center(child: TextButton(onPressed:(){},style:TextButton.styleFrom(minimumSize:Size.fromRadius(20),backgroundColor:Color(0xfff3BA6EA)),child:Text("LOGOUT",style:mTextStyle16(mFontColors:Colors.white),)),)

              ],
            ),
          ))
        ],
      ),
    );
  }
}