import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:job_project/utils/color_res.dart';

Widget commonTextField({
  required TextEditingController controller,
  String? hintText,
  Widget? suffixIcon,
  void Function(String)? onChanged,
  Widget? prefixIcon,
  void Function()? onTap,
  Color? color,
  bool obscureText = false,
}) {
  return TextField(
    onTap: onTap,
    controller: controller,
    obscureText: obscureText,
    obscuringCharacter: "*",
    onChanged: onChanged,
    cursorHeight: 25,
    decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: Get.height * 0.018,
            color: ColorRes.black.withOpacity(0.15),
            fontWeight: FontWeight.w500),
        suffixIcon: suffixIcon,
        //isCollapsed: true,
      //contentPadding: EdgeInsets.fromLTRB(13, 5.5, 0, 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color:color??Colors.black,
            width: 1.2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color:Color(0XFFF3ECFF),
            width: 1.5,
          ),
        )),
  );
}

Widget textFieldDecoration(Widget? child) {
  return Card(
    shadowColor: Color(0XFF8B4EFF).withOpacity(0.5),
    elevation: 0,
    child: Container(
      width: Get.width * 0.904,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0XFFFFFFFF),
      ),
      child: child,
    ),
  );
}
Widget commonOtpTextField(void Function(String)? onChanged,){
  return Card(
    child: Container(
   height: Get.height*0.0690,
      width:Get.width*0.1946,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0XFFFFFFFF),
      ),
      child: TextFormField(
        onChanged: onChanged,
keyboardType: TextInputType.number,

        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Color(0XFF8B4EFF),
            width: 1.2,
          ),
        ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color:Color(0XFFF3ECFF),
                width: 1.5,
              ),
            )),
      ),
    ),
  );
}