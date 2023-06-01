import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/congrats/congrats_controller.dart';

import '../../commen/common_widget.dart';
import 'congrats_widget.dart';

class Congrats extends StatelessWidget {
  const Congrats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CongratsController());
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: Get.height * 0.3238,),
        child: Column(
          children: [
            dotImage(),
            verticalSize(Get.height*0.01970),
            congratsText(),
            verticalSize(Get.height*0.03448),
            accountReady(),
            verticalSize(Get.height*0.2069),
            goToHomePage
          ],
        ),
      ),
    );
  }
}
