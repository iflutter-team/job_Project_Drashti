import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/intro/intro_controller.dart';
import 'package:job_project/screens/intro/intro_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(IntroController());
    return Scaffold(
      body: Column(
        children: [
          dotImage(),
          bottomContainor
        ],
      ),
    );
  }
}