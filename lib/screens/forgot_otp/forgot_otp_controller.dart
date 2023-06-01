import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ForgotOtpController extends GetxController {
  void focusToNext(dynamic value,context){
    if(value.length==1){
      FocusScope.of(context).nextFocus();

    }
  }
  void focusToNext1(dynamic value,context){
    if(value.length==1){
      FocusScope.of(context).nextFocus();

    }
  }
  void focusToNext2(dynamic value,context){
    if(value.length==1){
      FocusScope.of(context).nextFocus();

    }
  }
  void focusToNext3(dynamic value,context){
    if(value.length==1){
      FocusScope.of(context).unfocus();

    }
  }
}
