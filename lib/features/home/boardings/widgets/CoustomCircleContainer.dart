import 'package:flutter/material.dart';

class Coustomcirclecontainer extends StatelessWidget{
  var width;
  var height;
  var child;
  var border;
  Coustomcirclecontainer({required this.width,required this.height,this.border,required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width:width,
      height: height,
      child: child,
      decoration:BoxDecoration(
        gradient: LinearGradient(colors:[Color(0xfff3BA6EA),Color(0xfff4479FF)],
        begin:Alignment.topCenter,
        end:Alignment.bottomCenter
        ),
        border:border,
        shape:BoxShape.circle
      ),
    );
  }
}