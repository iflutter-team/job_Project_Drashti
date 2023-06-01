import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/profile/profile_controller.dart';

import 'profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileController());
    return Scaffold(
      body:  Column(
        children: [
          appBarRow,
          rowCircleText,
        ],
      ),
    );
  }
}
