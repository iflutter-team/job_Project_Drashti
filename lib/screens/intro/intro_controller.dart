import 'package:get/get.dart';
import 'package:job_project/screens/create_account/create_acc_screen.dart';

class IntroController extends GetxController{
  int index = 0;
void introToCreateAc(){
  if(index==0){
  Get.to(CreateAccount());
  }
 }
 }