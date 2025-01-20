import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/sign_up_screen.dart';

class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds:2),()async{
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>SignUpScreen(),));
    });
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child:Image.asset("assert/main_splash_ic.png",height:249,width: 249,)),
          SizedBox(height:10,),
          Text('HEALTH WELLNESS',style:mTextStyle25(mFontColors:Color(0xfff3BA6EA)),),
         SizedBox(height:10,),
         Text("Welcome !",style: mTextStyle14(mFontWeight:FontWeight.normal,mFontColors:Color(0xfff3BA6EA)),),
         Text("to Health Wellness",style: mTextStyle14(mFontWeight:FontWeight.normal,mFontColors:Color(0xfff3BA6EA)),),

        ],
      )
    );
  }
}