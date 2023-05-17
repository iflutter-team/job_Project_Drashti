import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/commen/text_filed_commen.dart';
import 'package:job_project/screens/sign_in/sign_in_controller.dart';
import 'package:job_project/screens/sign_in/sign_in_screen.dart';
import 'package:job_project/utils/color_res.dart';

import '../../utils/string_res.dart';

Widget signInText() {
  return Text(
    StringRes.signInTo,
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: Get.height * 0.025,
        color: Colors.black),
  );
}

Widget emailText() {
  return lableText(StringRes.email);
}

Widget emailTextFeildSignIn =
    GetBuilder<SignInController>(builder: (controller) {
  return textFieldDecoration(
      commonTextField(controller: controller.email, hintText: StringRes.email));
});

Widget passText() {
  return lableText(StringRes.passWord);
}

Widget passTextFeildSignIn =
    GetBuilder<SignInController>(builder: (controller) {
  return textFieldDecoration(commonTextField(
      controller: controller.passWordController, hintText: StringRes.passWord));
});

Widget signInButton = GetBuilder<SignInController>(
  builder: (controller) {
    return commonButton(StringRes.SignIn);
  },
);

Widget forgotPass = GetBuilder<SignInController>(
  builder: (controller) {
    return InkWell(
      child: Text(
        StringRes.forgotPass,
        style: TextStyle(
            color: ColorRes.drakPurple,
            fontWeight: FontWeight.w500,
            fontSize:15),
      ),
    );
  },
);

Widget continueText() {
  return Text(
    StringRes.continueWith,
    style: TextStyle(
        color: ColorRes.black, fontWeight: FontWeight.w400, fontSize: 15),
  );
}

Widget dontHaveAccount = GetBuilder<SignInController>(builder: (controller) {
  return rowText(StringRes.dontHaveAcc, StringRes.signup);
},);

Widget signInCheckbox = GetBuilder<SignInController>(id:"refresh",builder: (controller) {
  return commonCheckBox(value: controller.check, onChanged:(value)=> controller.select1(value));
},);
