import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/commen/text_filed_commen.dart';
import 'package:job_project/screens/sign_up/sign_up_controller.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

Widget bodyScreen() {
  return SingleChildScrollView(
    child: Column(
      children: [
        logoContainor(),
        signUpText(),
        firstName(),
        verticalSize(Get.height * 0.0123),
        firstTextField,
        verticalSize(Get.height * 0.0246),
        lastName(),
        verticalSize(Get.height * 0.0123),
        lastTextField,
        verticalSize(Get.height * 0.0246),
        emailSignUp(),
        verticalSize(Get.height * 0.0123),
        emailSignUpTextField,
        verticalSize(Get.height * 0.0246),
        phone(),
        verticalSize(Get.height * 0.0123),
        phoneTextField,
        verticalSize(Get.height * 0.0246),
        passSignUp(),
        verticalSize(Get.height * 0.0123),
        passSignUpTextField,
        verticalSize(Get.height * 0.0246),
        occupation(),
        verticalSize(Get.height * 0.0123),
        occupationTextField,
        verticalSize(Get.height * 0.0246),
        city(),
        verticalSize(Get.height * 0.0123),
        cityTextField,
        verticalSize(Get.height * 0.0246),
        state(),
        verticalSize(Get.height * 0.0123),
        stateTextField,
        verticalSize(Get.height * 0.0246),
        country(),
        verticalSize(Get.height * 0.0123),
        countryTextField,
        verticalSize(Get.height * 0.0123),
        checkBoxSignUp,
        signInButton,
        continueText(),
        googleAndFace(),
        signUpRowText
        
      ],
    ),
  );
}

Widget signUpText() {
  return Text(
    StringRes.signUpForFree,
    style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: Get.height * 0.025,
        color: ColorRes.black),
  );
}

Widget firstName() {
  return lableText(StringRes.firstName);
}

Widget firstTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.firstNameController,
        hintText: StringRes.firstName)));

Widget lastName() {
  return lableText(StringRes.lastName);
}

Widget lastTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.lastNameController,
        hintText: StringRes.lastName)));

Widget emailSignUp() {
  return lableText(StringRes.email);
}

Widget emailSignUpTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.emailSignUpController,
        hintText: StringRes.email)));

Widget phone() {
  return lableText(StringRes.phone);
}

Widget phoneTextField = GetBuilder<SignUpController>(
    id: "SignUp",
    builder: (controller) => textFieldDecoration(commonTextField(
          controller: controller.phoneController,
          hintText: StringRes.phone,
          prefixIcon: DropdownButtonHideUnderline(
            child: DropdownButton(
              value: controller.dropvalue,
              icon: Icon(
                Icons.arrow_drop_down_rounded,
                color: ColorRes.grey,
              ),
              items: controller.name.map((String name) {
                return DropdownMenuItem(
                  child: Text(name),
                  value: name,
                );
              }).toList(),
              onChanged: (value) {
                controller.dropDownValue(value);
              },
            ),
          ),
        )));

Widget passSignUp() {
  return lableText(StringRes.passWord);
}

Widget passSignUpTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.passSignUpController,
        hintText: StringRes.passWord)));

Widget occupation() {
  return lableText(StringRes.occupation);
}

Widget occupationTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.occupationController,
        hintText: StringRes.occupation)));

Widget city() {
  return lableText(StringRes.city);
}

Widget cityTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.cityController, hintText: StringRes.city)));

Widget state() {
  return lableText(StringRes.state);
}

Widget stateTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.cityController, hintText: StringRes.state)));

Widget country() {
  return lableText(StringRes.country);
}

Widget countryTextField = GetBuilder<SignUpController>(
    builder: (controller) => textFieldDecoration(commonTextField(
        controller: controller.countryController,
        hintText: StringRes.country)));

Widget checkBoxSignUp = GetBuilder<SignUpController>(
  id: "SignUp",
  builder: (controller) => commonCheckBox(
    value: controller.signUpCheck,
    onChanged: (value) => controller.signUpCheckBox(value),
  ),
);

Widget signInButton = GetBuilder<SignUpController>(
    builder: (controller) => commonButton(StringRes.signup));
Widget signUpRowText = GetBuilder<SignUpController>(builder: (controller) {
  return rowText(StringRes.alreadyHaveAcc, StringRes.signup);
},);