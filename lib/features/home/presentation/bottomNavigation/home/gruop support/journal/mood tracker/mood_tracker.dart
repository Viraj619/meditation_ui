import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:new_flutter_project/core/utils/helpers.dart';
import 'package:new_flutter_project/core/utils/resources.dart';
import 'package:new_flutter_project/features/login%20and%20sign%20up/widgets/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class MoodTracker extends StatefulWidget {
  @override
  State<MoodTracker> createState() => _MoodTrackerState();
}

class _MoodTrackerState extends State<MoodTracker> {
  DateTime? datePicker;
  DateFormat mFromate = DateFormat.yMMMM();
  DateTime today = DateTime.now();
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  Map<String, List> mySelectedEvents = {};

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("new event ${jsonEncode(mySelectedEvents)}");
    print('current index is ${currentIndex}');
    selectedDay = focusedDay;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
        title: Text(tr("moodTracker.heading"),
          style: mTextStyle16(),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
              child: Text(tr("moodTracker.title"),
            style: mTextStyle16(),
          )),

          /// list of moods
          SizedBox(
            width: 400,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                // scrollDirection:Axis.horizontal,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (_, index) {
                  return FittedBox(
                    child: InkWell(
                      onTap: () {
                        currentIndex = index;
                        setState(() {});
                      },
                      child: CoustomContainer(
                          border: Border.all(
                              color: currentIndex == index
                                  ? Color(0xfff3BA6EA)
                                  : Color(0xfffEAF2F8)),
                          color: Color(0xfffEAF2F8),
                          width: 100.0,
                          height: 100.0,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(Resource.moodList[index]['image']),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "${Resource.moodList[index]['title']}",
                                style: mTextStyle14(),
                              )
                            ],
                          )),
                    ),
                  );
                }),
          ),
          Text(tr("moodTracker.Calender"),
            style: mTextStyle14(),
          ),

          /// table calender
          CoustomContainer(
            color: Color(0xfffEAF2F8),
            width: 300.0,
            height: 310.0,
            child: TableCalendar(
              rowHeight: 35,
              headerStyle:
              HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,

              calendarStyle:CalendarStyle(
                selectedDecoration:BoxDecoration(image: DecorationImage(image: NetworkImage( Resource.moodList[currentIndex]['image'])))
              ),
              
              focusedDay: today,
              firstDay: DateTime.utc(2024, 10, 15),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: onDaySelected,
              eventLoader: listOfDayEvents,
              selectedDayPredicate: (day) => isSameDay(day, today),
            ),
          )
        ],
      ),
    );
  }

  /// adding moods
  void onDaySelected(DateTime day, DateTime focusedDay) {
    if (mySelectedEvents[dateFormat(focusedDay)] !=
        null) {
      mySelectedEvents[dateFormat(focusedDay)] = [
        {
          'image': Resource.moodList[currentIndex]['image'],
        }
      ];
    } else {
      mySelectedEvents[dateFormat(focusedDay)] = [
        {
          'image': Resource.moodList[currentIndex]['image'],
        }
      ];
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(tr("moodTracker.message"),
          style: mTextStyle16(),
        ),
        backgroundColor: Color(0xfffEAF2F8),
      ));
    }
    print('mySelectedEvents$mySelectedEvents');
    today = day;
    setState(() {
    });
  }
/// date format
  String dateFormat(DateTime? date){
    return DateFormat('yyyy-MM-dd').format(date!);
  }

  /// list of moods
  List listOfDayEvents(DateTime dateTime) {
    if (mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)] != null) {
      return mySelectedEvents[DateFormat('yyyy-MM-dd').format(dateTime)]!;
    } else {
      return [];
    }
  }
}
