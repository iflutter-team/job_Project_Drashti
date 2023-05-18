import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{
  TextEditingController email = TextEditingController();
  TextEditingController passWordController = TextEditingController();

  bool check = false;
  void select1 (dynamic value){
    check  = value!;
    update(["refresh"]);
  }
  bool signPass = true;
  void suffixChangeSign() {
    signPass = !signPass;
    update(["refresh"]);
  }
  String? emailErrorSign;
  void emailValidatorSign(String? value) {
    if(value==null||value.isEmpty){
      emailErrorSign = "Enter Email";
    }
    else if(!GetUtils.isEmail(value)){
      emailErrorSign = 'Enter Valid Email';
    }
    else{
      emailErrorSign = null;
    }
    update(["refresh"]);
  }
}