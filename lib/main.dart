import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/screens/create_account/create_acc_screen.dart';
import 'package:job_project/screens/sign_in/sign_in_screen.dart';
import 'package:job_project/screens/sign_up/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true
      ),
      home:CreateAccount() ,
    );
  }
}

