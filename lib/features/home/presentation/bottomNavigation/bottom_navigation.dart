import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/chart%20history/chart_history.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/home/home_screen.dart';
import 'package:new_flutter_project/features/home/presentation/bottomNavigation/my%20deshboard/dashboard.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;
  List<Widget>navigationList=[
    HomeScreen(),
    ChartHistory(),
    Dashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:navigationList[selectedIndex],
      bottomNavigationBar:NavigationBar(
        destinations: [
          NavigationDestination(
              selectedIcon:Image.asset("assert/home_ic.png"),
              icon: Icon(Icons.home), label:tr("bottomNavigation.home")),
          NavigationDestination(
              selectedIcon:Image.asset("assert/message_ic.png"),
              icon: Icon(Icons.message), label:tr("bottomNavigation.chatHistory")),
          NavigationDestination(
              selectedIcon:Image.asset("assert/profile_ic.png"),
              icon: Icon(Icons.account_circle), label:tr("bottomNavigation.MyDashboard")),
        ],
        selectedIndex:selectedIndex,
        onDestinationSelected:(value){
          selectedIndex=value;
          setState(() {
          });
        },
      )
    );
  }
}