import 'package:flutter/material.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';

class DeepRelaxing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
        title:Text("Choose a Video Track",style:mTextStyle14(),),

      ),
    );
  }
}