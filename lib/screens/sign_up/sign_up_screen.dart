import 'package:flutter/material.dart';

import '../../commen/text_filed_commen.dart';

class SignUpScreen extends StatefulWidget {
   SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var name = ['one', 'two', 'three'];

  String? dropvalue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: TextField(
       decoration: InputDecoration(
         prefix: Container(
           color: Colors.blue,
           child: DropdownButton(
             value: dropvalue,
             icon: Icon(Icons.add,color: Colors.black,),
             items: name.map((String name) {
               return DropdownMenuItem(
                 child: Text(name),
                 value: name,
               );
             }).toList(),
             onChanged: (value) {
               setState(() {
                 dropvalue = value;
               });
             },
           ),
         ),
         hintText:"mobile no",
         focusedBorder: OutlineInputBorder()
       ),
     ),
    );
  }
}
