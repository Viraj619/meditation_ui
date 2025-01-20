import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';

class ChartHistory extends StatefulWidget{
  @override
  State<ChartHistory> createState() => _ChartHistoryState();
}

class _ChartHistoryState extends State<ChartHistory> with SingleTickerProviderStateMixin{
  DateTime? datePicker;
  DateTime? mDatePicker;
  DateFormat mFromate=DateFormat.yMd();

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController=TabController(length: 3, vsync:this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(onPressed:(){},icon:Icon(Icons.arrow_back_ios_sharp),),
        title:Text("Journal",style: mTextStyle16(),),
        centerTitle:true,
      ),
      body:Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceAround,
            children: [
            Text("From"),
            Text("To"),
          ],),
          SizedBox(height:10,),
          /// date picker
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// calender from
             calender(),
              /// calendar to
             calender(isSelect:true),
              /// tab bar
            ],
          ),
          SizedBox(height:10,),
          /// tab bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: CoustomContainer(color:Color(0xfffEAF2F8),width:450.0, height:50.0,
                child:TabBar(
                  indicatorPadding: EdgeInsets.all(8),
                  indicatorSize:TabBarIndicatorSize.tab,
                  controller:tabController,
                  dividerColor:Colors.white,
                  labelStyle:TextStyle(color:Colors.white),
                  isScrollable:true,
                  tabAlignment:TabAlignment.start,
                  indicator:BoxDecoration(
                    borderRadius:BorderRadius.circular(25),
                    color:Color(0xfff3BA6EA),

                  ),
                  tabs: [
                    Tab(text:"Feel Better in 15",),
                    Tab(text:'Therapy Over Text',),
                    Tab(text:"Tide Over Together")
                  ],)),
          ),
          /// tab view
          Expanded(
            child: TabBarView(
                controller:tabController,
                children:[
              /// feel better in 15 tab view
              Center(child: Text("No Records Found",style:mTextStyle16(),)),
              /// therapy over text tab
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    CoustomContainer(color:Color(0xfffEAF2F8),width:400.0, height:150.0, child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal:10,vertical:10),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                        Text("Therapy Over Text",style:mTextStyle16(mFontColors:Color(0xfff3BA6EA)),),
                        SizedBox(height:10,),
                        Text("Date",style:mTextStyle14(),),
                        SizedBox(height:10,),
                        Text("December 13,2024"),
                        Text("12:00 Am-02:00 Am")
                      ],),
                    )),
                  ],
                ),
              ),
              /// Tide Over together tab
              Center(child: Text("No Records found",style:mTextStyle16(),))

            ]),
          )

        ],
      ),
    );
  }
  /// date picker
  Widget calender({bool isSelect=false}){
      return InkWell(
        onTap:()async{
         isSelect?mDatePicker : datePicker= await showDatePicker(context: context,
              firstDate: DateTime(DateTime.now().year-1,DateTime.now().month,),
              lastDate:DateTime.now());
          setState(() {

          });
        },
        child: CoustomContainer(color:Color(0xfffEAF2F8),width:150.0, height:50.0, child:Row(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          children: [
            Text(isSelect ? mFromate.format(mDatePicker??DateTime.now()):mFromate.format(datePicker??DateTime.now()),style:mTextStyle14(mFontWeight: FontWeight.normal),),
            Icon(Icons.calendar_month,color:Color(0xfff3BA6EA),),
          ],
        )),
      );

  }
}