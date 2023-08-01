import 'package:flutter/material.dart';

import 'package:vips/Screen/Attendance/AttendanceCard.dart';

class TodayAttendance extends StatefulWidget {
  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         AttendanceCard(attendance: true,
         endtime: "10:30 PM",
         staff: "Sanskar",
         starttime: "9:30 AM",
         subject: "c Programming",
         ),
         AttendanceCard(attendance: false,
         endtime: "9:30 PM",
         staff: "Sanskar",
         starttime: "8:30 AM",
         subject: "Communication",
         ),
          
        ],
      ),
    );
  }
}
