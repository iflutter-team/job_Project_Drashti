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

Widget emailTextFeildSignIn = GetBuilder<SignInController>(
    id: "refresh",
    builder: (controller) {
      return Column(
        children: [
          SizedBox(
            height: 45,
           width: 330,
           child: commonTextField(color: controller.emailErrorSign!=""?ColorRes.red:Colors.amber,
              controller: controller.email,
              hintText: StringRes.email,
              onChanged: controller.emailValidatorSign,
            ),
          ),
          controller.emailErrorSign != null
              ? errorContainor(data: controller.emailErrorSign ?? "")
              : const SizedBox(),
        ],
      );
    });

Widget passText() {
  return lableText(StringRes.passWord);
}

Widget passTextFeildSignIn = GetBuilder<SignInController>(
    id: "refresh",
    builder: (controller) {
      return SizedBox(
        height: 45,
          width: 330,
          child:commonTextField(
        controller: controller.passWordController,
        hintText: StringRes.passWord,
        suffixIcon: suffixIconSignUp,
        obscureText: controller.signPass,
      ));
    });
Widget suffixIconSignUp = GetBuilder<SignInController>(
  id: "refresh",
  builder: (controller) {
    return InkWell(
      onTap: () => controller.suffixChangeSign(),
      child: Icon(
        controller.signPass ? Icons.visibility_off : Icons.visibility,
        color: ColorRes.grey,
      ),
    );
  },
);
Widget signInButton = GetBuilder<SignInController>(
  builder: (controller) {
    return commonButton(StringRes.signIn);
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
            fontSize: 15),
      ),
    );
  },
);

Widget dontHaveAccount = GetBuilder<SignInController>(
  builder: (controller) {
    return rowText(StringRes.dontHaveAcc, StringRes.signup);
  },
);

Widget signInCheckbox = GetBuilder<SignInController>(
  id: "refresh",
  builder: (controller) {
    return commonCheckBox(
        value: controller.check,
        onChanged: (value) => controller.select1(value));
  },
);
