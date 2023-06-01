import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController{
  TextEditingController newPassController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  bool newPass = true;
  void suffixIconNewPass(){
    newPass =!newPass;
    update(["ReSet"]);
  }
  bool confirmPass = true;
  void suffixIconConfirmPass(){
    confirmPass =!confirmPass;
    update(["ReSet"]);
  }
  bool resetCheck = false;
  void resetCheckBox(dynamic value){
    resetCheck =value!;
    update(["ReSet"]);
  }
void resetToBack(){
  Get.back();
}
}