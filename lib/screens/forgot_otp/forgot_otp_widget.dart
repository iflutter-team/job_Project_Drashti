import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/commen/text_filed_commen.dart';
import 'package:job_project/screens/forgot_otp/forgot_otp_controller.dart';
import 'package:job_project/utils/color_res.dart';

import '../../utils/string_res.dart';

Widget otpEmail(BuildContext context) {
  return GetBuilder<ForgotOtpController>(
    builder: (controller) => Row(
      children: [
        commonOtpTextField(
          (value) => controller.focusToNext(value, context),
        ),
        commonOtpTextField(
          (value) => controller.focusToNext1(value, context),
        ),
        commonOtpTextField(
          (value) => controller.focusToNext2(value, context),
        ),
        commonOtpTextField(
          (value) => controller.focusToNext3(value, context),
        ),
      ],
    ),
  );
}

Widget otpBackButton =
    GetBuilder<ForgotOtpController>(builder: (controller) => commenBackArrow());

Widget forgotPass() {
  return Text(
    StringRes.forgotPassword,
    style: TextStyle(
        color: ColorRes.black,
        fontWeight: FontWeight.w500,
        fontSize: Get.width * 0.0533),
  );
}
Widget codeSent = GetBuilder<ForgotOtpController>(builder: (controller) =>Text("Code has been send to") );