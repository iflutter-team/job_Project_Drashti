import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/forgot_password/forgot_password_screen.dart';

class SignUpController extends GetxController{
TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController emailSignUpController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController passSignUpController = TextEditingController();
TextEditingController occupationController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController stateController = TextEditingController();
TextEditingController countryController = TextEditingController();

String? dropvalue;
var name = ['one', 'two', 'three'];

void dropDownValue(value){
  dropvalue = value;
  update(["SignUp"]);
}
bool signUpCheck = false;
void signUpCheckBox(value){
  signUpCheck = value;
  update(["SignUp"]);
}
void signUpToForgot(){

  Get.to(ForgotScreen());
}
}