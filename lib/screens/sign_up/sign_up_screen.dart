import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/sign_up/sign_up_controller.dart';

import '../../commen/text_filed_commen.dart';
import 'sign_up_widget.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

TextEditingController dsgh = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      body: bodyScreen(),);



  }
}
