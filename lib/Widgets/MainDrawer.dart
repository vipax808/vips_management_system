import 'package:flutter/material.dart';
import 'package:vips/Screen/Attendance/Attendance.dart';
import 'package:vips/Screen/Exam/Exam_result.dart';
import 'package:vips/Screen/LeaveApply/LeaveApply.dart';
import 'package:vips/Screen/home.dart';

import 'package:vips/Widgets/DrawerList.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerListTile(
            imgpath: "home.png",
            name: "Home",
            ontap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => Home(),
                ),
              );
            }),
        DrawerListTile(
          imgpath: "attendance.png",
          name: "Attendance",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Attendance(),
              ),
            );
          },
        ),
        DrawerListTile(
            imgpath: "classroom.png", name: "Class work", ontap: () {}),
        DrawerListTile(imgpath: "profile.png", name: "Profile", ontap: () {}),
        DrawerListTile(
          imgpath: "exam.png",
          name: "Examination",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ExamResult(),
              ),
            );
          },
        ),
        DrawerListTile(imgpath: "fee.png", name: "Fees", ontap: () {}),
        DrawerListTile(
            imgpath: "calendar.png", name: "Time Table", ontap: () {}),
        DrawerListTile(imgpath: "library.png", name: "Library", ontap: () {}),
        DrawerListTile(imgpath: "downloads.png", name: "Downloads"),
        DrawerListTile(imgpath: "bus.png", name: "Track ", ontap: () {}),
        DrawerListTile(
          imgpath: "leave_apply.png",
          name: "Leave apply",
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => LeaveApply(),
              ),
            );
          },
        ),
        DrawerListTile(imgpath: "activity.png", name: "Activity", ontap: () {}),
        DrawerListTile(
            imgpath: "notification.png", name: "Notification", ontap: () {}),
      ],
    );
  }
}
