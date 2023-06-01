import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/reset_Password/reset_password_controller.dart';

import 'reset_password_widget.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPasswordController());
    return Scaffold(
     body: Padding(
       padding:EdgeInsets.only(top:Get.height*0.07635,left: Get.width*0.048,right: Get.width*0.048),
       child: Column(
         children: [
           appbarRow,
           verticalSize(Get.height*0.0345),
           createNewPass(),
           verticalSize(Get.height*0.0345),
           newPassLable(),
           verticalSize(Get.height*0.01231),
           newPasswordTextField,
           verticalSize(Get.height*0.0246),
           confirmPassLable(),
           verticalSize(Get.height*0.01231),
           confirmPasswordTextField,
           verticalSize(Get.height*0.0246),
           checkBoxReset,
           verticalSize(Get.height*0.3891),
           saveButtonReset
         ],
       ),
     ),
    );
  }
}
