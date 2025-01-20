import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/bottom_navigation.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/login_screen.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Container(
          width: double.infinity,
          height:double.infinity,
          decoration:BoxDecoration(
            image:DecorationImage(image:AssetImage("assert/image/login_bc.png"),fit:BoxFit.cover),
          ),
          child:Stack(
            children: [
              Align(
                  alignment:Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:80),
                    child: CoustomButton(width: 300.0, height:50.0,child:TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context) =>LoginScreen(),));
                    }, child: Text(tr("authPage.signUP"),style:mTextStyle14(mFontColors: Colors.white),)),),
                  )),
              Align(
                  alignment:Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom:20),
                    child: CoustomButton(width: 300.0, height:50.0,child:TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigation(),));
                    }, child: Text(tr("authPage.logIN"),style:mTextStyle14(mFontColors: Colors.white),)),),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}