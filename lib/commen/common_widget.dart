import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:job_project/utils/asstes_res.dart';
import 'package:job_project/utils/color_res.dart';

import '../utils/string_res.dart';

Widget verticalSize(double? height){
  return SizedBox(height: height);
}
Widget logoContainor() {
  return Container(
   // margin: EdgeInsets.symmetric(horizontal: Get.width * 0.35),
    height: Get.height * 0.0985,
    width: Get.width * 0.2133,
    alignment: Alignment.center,
    decoration: BoxDecoration(
        color: ColorRes.lightPurple, borderRadius: BorderRadius.circular(15)),
    child: Text(
      StringRes.logo,
      style: TextStyle(
          color: ColorRes.drakPurple,
          fontWeight: FontWeight.w600,
          fontSize:18),
    ),
  );
}

Widget lableText(String data) {
  return Padding(
    padding:EdgeInsets.only(left: Get.width*0.065),
    child: Row(
      children: [
        Text(
          data,
          style: TextStyle(
              color: ColorRes.black.withOpacity(0.6),
              fontWeight: FontWeight.w500,
            fontSize:Get.height*0.017
          ),
        ),
        Text(
          "*",
          style: TextStyle(color: ColorRes.red,fontSize: Get.width*0.04),
        )
      ],
    ),
  );
}


Widget commonButton(String data){
  return Container(
    height: Get.height*0.063,
    width: Get.width*0.90,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
        colors: [
           ColorRes.buttonColor,
           ColorRes.drakPurple,
        ],
        begin: FractionalOffset.centerLeft,
        end: FractionalOffset.centerRight,
        stops: [0.0,1],
      ),
    ),
    child: Text(data,style: TextStyle(color: Colors.white,fontSize: Get.height*0.022,fontWeight: FontWeight.w500
    ),),
  );
}

Widget googleAndFace(){
  return Row(
    children: [
      Card(
        child: Container(
          height:Get.height*0.063,
          width: Get.width*0.42,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0XFFF3ECFF),width: 1.2)
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(AsstesRes.faceBook,height: 25,),
              Text(StringRes.faceBook,style: TextStyle(color: ColorRes.black,fontWeight: FontWeight.w500,fontSize: 15),)
            ],
          ),
        ),
      ),
      Spacer(),
      Card(
        child: Container(
          height:Get.height*0.063,
          width: Get.width*0.42,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0XFFF3ECFF),width: 1.2)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Image.asset(AsstesRes.google,height: 25,),
              Text("Google",style: TextStyle(color: ColorRes.black,fontWeight: FontWeight.w500,fontSize: 15),)
            ],
          ),
        ),
      )
    ],
  );
}

Widget rowText(String data,String data1){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(data,style: TextStyle(color: ColorRes.black,fontWeight: FontWeight.w500,fontSize: 15),),
      Text(data1,style: TextStyle(color: ColorRes.drakPurple,fontWeight: FontWeight.w500,fontSize: 15),),
    ],
  );
}

Widget commonCheckBox({required bool? value,required void Function(bool?)? onChanged}){
  return  Row(
    children: [
      Checkbox(
        value:value,
        onChanged:onChanged ,activeColor: ColorRes.drakPurple,
        checkColor: ColorRes.white,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        side:BorderSide(color: ColorRes.drakPurple,width: 1.2),),
         Text(
        StringRes.remember,
        style: TextStyle(
            color: ColorRes.black,
            fontSize: Get.height*0.016,
            fontWeight: FontWeight.w500),
      ),
    ],
  );
}
