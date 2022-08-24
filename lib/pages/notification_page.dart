import 'package:attendence/components/gradient_nav.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientAppBar(
          title: "Notification",
        ),
        Expanded(child: Center(child: Text("No Notification Found")))
      ],
    );
  }
}
