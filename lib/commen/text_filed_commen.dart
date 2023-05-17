import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/utils/color_res.dart';


Widget commonTextField({required TextEditingController controller,String? hintText,Widget? suffixIcon,void Function(String)? onChanged}) {
  return TextField(
    controller: controller,
    onChanged: onChanged,cursorHeight: 25,
    decoration: InputDecoration(
      hintText: hintText,
        hintStyle: TextStyle(fontSize: Get.height*0.018,color: ColorRes.black.withOpacity(0.15),fontWeight: FontWeight.w500),
        suffixIcon: suffixIcon,
        isCollapsed: true,
        contentPadding: EdgeInsets.fromLTRB(13, 5.5, 0,10),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0XFF8B4EFF),
              width: 1.2,
            ),),
        enabledBorder: InputBorder.none),
  );
}

Widget textFieldDecoration(Widget? child) {
  return Card(
    shadowColor: Color(0XFF8B4EFF).withOpacity(0.5),
    elevation:3,
    child: Container(
      height: Get.height*0.063,
      width: Get.width*0.90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFFFFFFF),
      ),
      child: child,
    ),
  );
}
