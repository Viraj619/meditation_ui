import 'package:flutter/material.dart';

class CoustomContainer extends StatelessWidget{
  var width;
  var height;
  var child;
  var border;
  var color;
  CoustomContainer({required this.width,required this.height,required this.child, this.color,this.border});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
      child: Container(
        width: width,
        height:height,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(15),
         color:Color(0xfffEAF2F8),
          border:border,
        ),
        child: child,
      ),
    );
  }
}

class CoustomTextField extends StatelessWidget{
  // String? Function(String?)validation;
  TextEditingController controller;
  String text;
  var textInputType;
  var color;
  var border;
  CoustomTextField({required this.controller,required this.text,required this.textInputType,this.color,this.border});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      height:50,
      decoration:BoxDecoration(
        color:color,
        borderRadius:BorderRadius.circular(10),
        border:border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: TextField(

          controller:controller,
          keyboardType:textInputType,
          decoration:InputDecoration(
            hintText:text,
            border:InputBorder.none,
            prefixIconColor:Color(0xFFF407BFF).withOpacity(0.2),
            fillColor:Color(0xFFF407BFF).withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}


class CoustomTextFormField extends StatelessWidget{
   //String? Function(String?)validation;
  TextEditingController controller;
  String text;
  var textInputType;
  var color;
  var border;
  CoustomTextFormField({required this.controller,required this.text,required this.textInputType,this.color,this.border});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:300,
      height:50,
      decoration:BoxDecoration(
        color:color,
        borderRadius:BorderRadius.circular(10),
        border:border,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: TextFormField(
          // validator:validation,
          validator:(value) {
            if(value==null || value.isEmpty){
              return "Please fill this field";
            }else {
              return null;
            }
          },
          /*onChanged:(values){

          },*/
          controller:controller,
          keyboardType:textInputType,
          decoration:InputDecoration(
            hintText:text,
            border:InputBorder.none,
            prefixIconColor:Color(0xFFF407BFF).withOpacity(0.2),
            fillColor:Color(0xFFF407BFF).withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}

class CoustomButton extends StatelessWidget{
  var width;
  var height;
  var child;
  var border;
  var color;
  CoustomButton({required this.width,required this.height,required this.child, this.color,this.border});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:15,vertical:5),
      child: Container(
        width: width,
        height:height,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(15),
           gradient: LinearGradient(
              colors:[Color(0xfff3BA6EA),Color(0xfff4479FF)],
            begin:Alignment.topCenter,
            end:Alignment.bottomCenter,
          ),
          border:border,
        ),
        child: child,
      ),
    );
  }
}

