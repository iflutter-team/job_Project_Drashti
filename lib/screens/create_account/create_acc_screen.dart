import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/commen/common_widget.dart';
import 'package:job_project/screens/create_account/create_controller.dart';
import 'package:job_project/screens/create_account/create_widget.dart';
import 'package:job_project/utils/asstes_res.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CreateController());
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(AsstesRes.gradiant),fit: BoxFit.cover),),
        child: Padding(
          padding:  EdgeInsets.only(left:Get.width*0.056,right:Get.width*0.056,top: Get.height*0.1933),
          child: Column(
            children: [
              logoText(),
              verticalSize(Get.height*0.1416),
              containorText(),
              verticalSize(Get.height*0.0406),
              createButton,
              verticalSize(Get.height*0.0406),
              haveAnAcco(),
              verticalSize(Get.height*0.0406),
              signInButtonCreate,
              verticalSize(Get.height*0.0406),
              termsText
            ],
          ),
        ),
      ),
    );
  }
}
