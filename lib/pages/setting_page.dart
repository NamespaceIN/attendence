import 'package:attendence/components/setting_object.dart';
import 'package:attendence/pages/subPages/phonebook.dart';
import 'package:attendence/pages/subPages/remote_attendence.dart';
import 'package:attendence/pages/leave.dart';
import 'package:attendence/pages/subPages/support.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState>? scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(radius: 30),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("demo"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("VIEW PROFILE"),
                      ],
                    )),
                    IconButton(
                      onPressed: () {
                        scaffoldKey?.currentState?.openEndDrawer();
                      },
                      icon: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingObject(
                    icon: Icons.support,
                    title: "Support",
                    desination: SupportPage(),
                  ),
                  SizedBox(width: 10),
                  SettingObject(
                      icon: Icons.event_available,
                      title: "Attendence",
                      desination: RemoteAttendence()),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingObject(icon: Icons.campaign, title: "Notice"),
                  SizedBox(width: 10),
                  SettingObject(icon: Icons.attach_money, title: "Expense"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingObject(
                      icon: Icons.logout,
                      title: "Leave",
                      desination: LeavePage()),
                  SizedBox(width: 10),
                  SettingObject(icon: Icons.task, title: "Approval"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingObject(
                    icon: Icons.star,
                    title: "Phonebook",
                    desination: PhoneBook(),
                  ),
                  SizedBox(width: 10),
                  SettingObject(icon: Icons.star, title: "Visit"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingObject(icon: Icons.star, title: "Appointment"),
                  SizedBox(width: 10),
                  SettingObject(icon: Icons.star, title: "Break"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SettingObject(icon: Icons.star, title: "Daily Leave"),
            ],
          ),
        ),
      ),
    );
  }
}
