import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/congrats/congrats_controller.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

import '../../utils/asstes_res.dart';

Widget dotImage() {
  return Container(
      height: Get.height * 0.2241,
      width: Get.width * 0.5653,
      child: Image.asset(
        AsstesRes.dotImage,
        fit: BoxFit.cover,
      ));
}

Widget congratsText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        StringRes.congrats,
        style: TextStyle(
            color: ColorRes.drakPurple,
            fontWeight: FontWeight.w600,
            fontSize: Get.width * 0.0693),
      ),
    ],
  );
}

Widget accountReady() {
  return Text(
    StringRes.ready,
    style: TextStyle(
        color: ColorRes.black,
        fontSize: Get.width * 0.03733,
        fontWeight: FontWeight.w400),
  );
}

Widget goToHomePage = GetBuilder<CongratsController>(builder: (controller) => commonButton(StringRes.goToHome),);