import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/forgot_otp/forgot_otp_controller.dart';
import 'package:job_project/screens/forgot_otp/forgot_otp_widget.dart';

class ForgotOtp extends StatelessWidget {
   ForgotOtp({Key? key}) : super(key: key);
ForgotOtpController forgotOtpController = Get.put(ForgotOtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          verticalSize(40),
          Row(
            children: [
              otpBackButton,
              forgotPass()
            ],
          ),
          otpEmail(context),
        ],
      ),
    );
  }
}
