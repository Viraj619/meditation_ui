import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/home/boardings/boarding_1.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class LoginScreen extends StatelessWidget{
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String pattern=r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regExp =RegExp(pattern);
    return Form(
      key:formkey,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
              SizedBox(
                height:50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:40),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Text(tr("authPage2.yourE-Mail"))),
              ),
              /// email
              CoustomTextFormField(
                validation:(value) {
                  if(value==null || value.isEmpty){
                    return "Please fill this field";
                  }else if(!regExp.hasMatch(value)){
                    return "Enter the valid email";
                  }
                },
                controller:emailController,
                  textInputType:TextInputType.emailAddress,
                  text:tr("authPage2.hintE-MailText"),border:Border.all(color:Color(0xFFF407BFF).withOpacity(0.2)),),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:40),
                child: Align(
                    alignment:Alignment.topLeft,
                    child: Text(tr("authPage2.passWord"))),
              ),
              /// password
                CoustomTextFormField(
                  validation:(value) {
                    if(value==null||value.isEmpty){
                      return "Please fill this field";
                    }
                  },
                  controller:passController,
                  textInputType:TextInputType.visiblePassword,
                  text:tr("authPage2.hintPassWordText"),border:Border.all(color:Color(0xFFF407BFF).withOpacity(0.2)),),
              /// forgot password button
              Align(
                alignment:Alignment.center,
                child: TextButton(onPressed: (){
                },child:Text(tr("authPage2.forgotPassWord"),style:mTextStyle16(mFontColors:Color(0xfff407BFF))),),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                Container(
                  width: 100,
                  height: 1,
                  decoration:BoxDecoration(
                    border:BorderDirectional(bottom:BorderSide(color: Colors.black))
                  ),
                ),
                SizedBox(width: 5,),
                Text(tr("authPage2.logInWith")),
                  SizedBox(width: 5,),
                Container(
                  width: 100,
                  height: 1,
                  decoration:BoxDecoration(
                      border:BorderDirectional(bottom:BorderSide(color: Colors.black))
                  ),
                )
              ],),
                SizedBox(height:10,),
              /// sing up with google and face
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Image.asset("assert/google_ic.png",width: 50,height: 50,fit:BoxFit.cover),
                  SizedBox(width:20,),
                  Image.asset("assert/facebook_ic.png",width: 45,height: 45,fit:BoxFit.cover,),
                ],
              ),
                SizedBox(height:10,),
              SizedBox(
                height:MediaQuery.of(context).size.height>784?MediaQuery.of(context).size.height*0.5:MediaQuery.of(context).size.height*0.4,
              ),
                /// next button
              CoustomButton(width: 300.0, height:50.0,child:TextButton(onPressed: (){
                if(formkey.currentState!.validate()){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Boarding1(),));
                }
              },child: Text(tr("authPage2.next"),style:mTextStyle14(mFontColors:Colors.white),),))

            ],),
          ),
        ),
      ),
    );
  }
}