import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/utils/asstes_res.dart';

Widget dotImage(){
  return Container(
    height: Get.height*0.3045,
    width: Get.width*0.768,
    color: Colors.blue,
    child: Image.asset(AsstesRes.dotImage),
  );
}
