import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              logoText(),
              containorText(),
              createButton,
              haveAnAcco(),
              signInButtonCreate,
              termsText
            ],
          ),
        ),
      ),
    );
  }
}
