import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/commen/text_filed_commen.dart';
import 'package:job_project/screens/reset_Password/reset_password_controller.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

Widget appbarRow = GetBuilder<ResetPasswordController>(
  builder: (controller) => Row(
    children: [
      commenBackArrow(onTap: () => controller.resetToBack()),
      Text(
        StringRes.resetPassword,
        style: TextStyle(
            color: ColorRes.black,
            fontWeight: FontWeight.w500,
            fontSize: Get.width * 0.0533),
      )
    ],
  ),
);

Widget createNewPass() {
  return Text(
    StringRes.createNew,
    style: TextStyle(
        color: ColorRes.black,
        fontWeight: FontWeight.w400,
        fontSize: Get.width * 0.03733),
  );
}

Widget newPassLable() {
  return lableText(StringRes.newPassword);
}

Widget newPasswordTextField = GetBuilder<ResetPasswordController>(
  id: "ReSet",
  builder: (controller) => textFieldDecoration(
    commonTextField(
      controller: controller.newPassController,
      hintText: StringRes.newPassword,
      obscureText: controller.newPass,
      suffixIcon: suffixEyeNew,
    ),
  ),
);
Widget suffixEyeNew = GetBuilder<ResetPasswordController>(
  builder: (controller) => InkWell(
    onTap: () => controller.suffixIconNewPass(),
    child: Icon(
      controller.newPass ? Icons.visibility_off : Icons.visibility,
      color: ColorRes.grey,
    ),
  ),
);

Widget confirmPassLable() {
  return lableText(StringRes.confirmPassword);
}

Widget confirmPasswordTextField = GetBuilder<ResetPasswordController>(
  id: "ReSet",
  builder: (controller) => textFieldDecoration(
    commonTextField(
      controller: controller.confirmPassController,
      hintText: StringRes.confirmPassword,
      obscureText: controller.confirmPass,
      suffixIcon: suffixEyeConfirm,
    ),
  ),
);
Widget suffixEyeConfirm = GetBuilder<ResetPasswordController>(
  builder: (controller) => InkWell(
    onTap: () => controller.suffixIconConfirmPass(),
    child: Icon(
      controller.confirmPass ? Icons.visibility_off : Icons.visibility,
      color: ColorRes.grey,
    ),
  ),
);

Widget checkBoxReset = GetBuilder<ResetPasswordController>(
  id: "ReSet",
  builder: (controller) => commonCheckBox(
    value: controller.resetCheck,
    onChanged: (value) => controller.resetCheckBox(value),
  ),
);

Widget saveButtonReset = GetBuilder<ResetPasswordController>(
    builder: (controller) => commonButton(StringRes.save));
