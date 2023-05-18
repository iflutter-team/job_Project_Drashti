import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/utils/asstes_res.dart';
import 'package:job_project/utils/color_res.dart';
import 'package:job_project/utils/string_res.dart';

import 'intro_controller.dart';

Widget dotImage() {
  return Padding(
    padding: EdgeInsets.only(top: Get.height * 0.2315, left: Get.width * 0.001),
    child: Container(
      height: Get.height * 0.3045,
      width: Get.width * 0.768,
      child: Image.asset(
        AsstesRes.dotImage,
        fit: BoxFit.contain,
      ),
    ),
  );
}

Widget bottomContainor = GetBuilder<IntroController>(
  builder: (controller) => Padding(
    padding: EdgeInsets.only(top: Get.height * 0.067),
    child: Container(
      height: Get.height * 0.3966,
      width: Get.width,
      decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(45), topLeft: Radius.circular(45))),
      child: Column(
        children: [
          verticalSize(Get.height*0.0595),
          Icon(
            Icons.person_pin_rounded,
            color: ColorRes.drakPurple,
            size: Get.height * 0.0422,
          ),
          verticalSize(Get.height*0.0251),
          Text(
            StringRes.looking,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorRes.black,
            ),
            textAlign: TextAlign.center,
          ),
          verticalSize(Get.height*0.0349),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                child: Container(
                  height: Get.height * 0.1539,
                  width: Get.width * 0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0XFFF3ECFF), width: 1.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AsstesRes.job,
                        height: Get.height * 0.0764,
                      ),
                      Text(
                        StringRes.job,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorRes.black,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  height: Get.height * 0.1539,
                  width: Get.width * 0.44,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0XFFF3ECFF), width: 1.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AsstesRes.employee,
                        height: Get.height * 0.0764,
                      ),
                      Text(
                        StringRes.employee,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: ColorRes.black,
                            fontSize:12),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
  ),
);
