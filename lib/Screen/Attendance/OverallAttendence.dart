import 'package:flutter/material.dart';
import 'OverallAttendanceCard.dart';

class OverallAttendance extends StatefulWidget {
  @override
  _OverallAttendanceState createState() => _OverallAttendanceState();
}

class _OverallAttendanceState extends State<OverallAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
         OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
         OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "15.12.2022",
          day: "sunday",
          firsthalf: true,
          secondhalf: false,
        ),
      ],),
    );
  }
}