import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/commen/text_filed_commen.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

import 'forgot_password_controller.dart';

Widget forgotBackArrow = GetBuilder<ForgotPassController>(
  builder: (controller) => commenBackArrow(),
);

Widget forgotPassword() {
  return Text(
    StringRes.forgotPassword,
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: Get.width * 0.064,
      color: ColorRes.black,
    ),
  );
}

Widget forgotText() {
  return Text(
    StringRes.forgotText,
    style: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize:15,
      color: ColorRes.black.withOpacity(0.6),
    ),
  );
}

Widget emailAddress(){
  return lableText(StringRes.emailAddress);
}

Widget emailAddTextField = GetBuilder<ForgotPassController>(builder: (controller) {
  return textFieldDecoration(commonTextField(controller: controller.emailAddress));
},);

Widget sendButton = GetBuilder<ForgotPassController>(builder: (controller) => commonButton(StringRes.sendIntro),);