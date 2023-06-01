import 'package:get/get.dart';
import 'package:job_project/screens/sign_in/sign_in_screen.dart';

import '../sign_up/sign_up_screen.dart';

class CreateController extends GetxController{
void createToSignUp(){
  Get.to(()=>SignUpScreen());
}
void createToSignIn(){
  Get.to(()=>SignIn(),);
}
}