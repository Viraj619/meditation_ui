import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class AddJournal extends StatelessWidget{
  TextEditingController titleController =TextEditingController();
  TextEditingController decController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined)),
        title:Text(tr("addJournal.headingAdd"),style: mTextStyle16(),),
        centerTitle:true,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height:50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:15),
              child: Container(
                width: double.infinity,
                height:400,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                    color:Color(0xfffEAF2F8)
                ),
                child:Column(
                  children: [
                    SizedBox(height:50,),
                    /// title textfield
                CoustomTextField(controller:decController, text:"Journal Title", textInputType:TextInputType.text,color:Colors.white,),
                    SizedBox(height: 10,),
                    /// desc textfield
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:20),
                      child:Container(width:double.infinity, height:200.0,
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child:Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                            child: TextField(
                              decoration:InputDecoration(
                                border: InputBorder.none,
                                hintMaxLines:10,
                                hintText:'Take a moment to reflection.Jot down your thoughts,emotions,and experiences from the day.',

                              ),
                            ),
                          ))
                    ),
                    SizedBox(height: 20,),
                    /// submit button
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    },style: TextButton.styleFrom(backgroundColor:Color(0xfff3BA6EA),minimumSize:Size(200,50)),child: Text(tr("addJournal.submit"),style:mTextStyle16(mFontColors:Colors.white),))

                  ],
                ),
              ),
            ),
           ],
        ),
      ),
    );
  }
}