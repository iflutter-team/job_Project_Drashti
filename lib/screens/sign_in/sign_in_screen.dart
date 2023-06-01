import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/sign_in/sign_in_controller.dart';
import 'package:job_project/screens/sign_in/sign_in_widget.dart';
import 'package:job_project/utils/color_res.dart';

import '../../commen/common_widget.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignInController());
    return Scaffold(
      
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              verticalSize(Get.height*0.10),
              logoContainor(),
              verticalSize(Get.height*0.022),
              signInText(),
              verticalSize(Get.height*0.040),
              emailText(),
              verticalSize(Get.height*0.009),
              emailTextFeildSignIn,
              verticalSize(Get.height*0.025),
              passText(),
              verticalSize(Get.height*0.009),
              passTextFeildSignIn,
              verticalSize(Get.height*0.012),
              signInCheckbox,
              verticalSize(Get.height*0.020),
              signInButton,
              verticalSize(Get.height*0.022),
              forgotPass,
              verticalSize(Get.height*0.020),
              continueText(),
              verticalSize(Get.height*0.025),
              googleAndFace(),
              verticalSize(Get.height*0.025),
              dontHaveAccount,
              SizedBox(
                height: 45,
                width: 330,
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(

                    ),
                    focusedBorder: OutlineInputBorder()
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
