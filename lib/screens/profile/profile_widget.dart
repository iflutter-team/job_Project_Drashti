import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/profile/profile_controller.dart';
import 'package:job_project/utils/asstes_res.dart';
import 'package:job_project/utils/string_res.dart';

import '../../utils/color_res.dart';

Widget appBarRow = GetBuilder<ProfileController>(
  builder: (controller) => Row(
    children: [
      commenAppBarCont(
        Text(
          StringRes.logo,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: Get.width * 0.0267),
        ),
      ),
      Text(
        StringRes.profile,
        style: TextStyle(
            color: ColorRes.black,
            fontWeight: FontWeight.w500,
            fontSize: Get.width * 0.05333),
      ),
      commenAppBarCont(
        Image.asset(AsstesRes.setting),
      ),
    ],
  ),
);

Widget rowCircleText = GetBuilder<ProfileController>(
    builder: (controller) => Row(
          children: [
            CircleAvatar(),
            Column(
              children: [
                Text(
                  StringRes.nameText,
                  style: TextStyle(
                      color: ColorRes.black,
                      fontWeight: FontWeight.w500,
                      fontSize: Get.width * 0.05333),
                ),
                Text(
                  StringRes.emailText,
                  style: TextStyle(
                      color: ColorRes.black.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: Get.width * 0.032),
                ),
                Text(
                  StringRes.professionText,
                  style: TextStyle(
                      color: ColorRes.black.withOpacity(0.6),
                      fontWeight: FontWeight.w400,
                      fontSize: Get.width * 0.032),
                ),
              ],
            ),

          ],
    ),
);
