import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/forgot_password/forgot_password_controller.dart';
import 'forgot_password_widget.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotPassController());
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: Get.width*0.048,right: Get.width*0.048),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              forgotBackArrow,
              forgotPassword(),
              forgotText(),
              emailAddress(),
              emailAddTextField,
              sendButton
            ],
          ),
        ),
    );
  }
}
