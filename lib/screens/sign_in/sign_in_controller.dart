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
}