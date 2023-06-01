import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/create_account/create_controller.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

Widget logoText() {
  return Text(
    StringRes.logo,
    style: TextStyle(
        color: ColorRes.black, fontWeight: FontWeight.w600, fontSize: Get.width*0.1173),
  );
}

Widget containorText() {
  return Text(
    textAlign: TextAlign.center,
    StringRes.currently,
    style: TextStyle(
        fontSize: Get.width*0.06933,
        fontWeight: FontWeight.w400,
        color: ColorRes.black.withOpacity(0.7)),
  );
}

Widget createButton = GetBuilder<CreateController>(
    builder: (controller) => InkWell(onTap: ()=>controller.createToSignUp(),
        child: commonButton(StringRes.create)));

Widget haveAnAcco() {
  return Text(
    StringRes.alreadyAnAcc,
    style: TextStyle(
        color: ColorRes.black.withOpacity(0.6),
        fontWeight: FontWeight.w400,
        fontSize: Get.width*0.048),
  );
}

Widget signInButtonCreate = GetBuilder<CreateController>(
  builder: (controller) => InkWell(
    onTap: ()=>controller.createToSignIn(),
    child: Container(
      height: Get.height * 0.063,
      width: Get.width * 0.90,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: ColorRes.drakPurple, width: 1.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Sign In",
        style: TextStyle(
            color: ColorRes.drakPurple,
            fontSize: Get.height * 0.022,
            fontWeight: FontWeight.w500),
      ),
    ),
  ),
);

Widget termsText = GetBuilder<CreateController>(
  builder: (controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          StringRes.termsText,
          style: TextStyle(
              color: ColorRes.grey,
              fontSize:  Get.width*0.041,
              fontWeight: FontWeight.w400),
        ),
        Row(
mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "to our",
              style: TextStyle(
                  color: ColorRes.grey,
                  fontSize: Get.width*0.04267,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              StringRes.termsText1,
              style: TextStyle(
                  color: ColorRes.black,
                  fontSize:  Get.width*0.04267,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ],
    );
  },
);
