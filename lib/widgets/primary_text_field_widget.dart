import 'package:alisoncart/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryTextFieldWidget extends StatelessWidget {
   PrimaryTextFieldWidget({super.key, required this.label,this.isPassword = false,this.hide = false ,this.ontab, this.validator, required this.controller, required this.hintText});


  final String label;
  bool isPassword;
  bool hide;
  VoidCallback ? ontab;
  final String? Function(String?)? validator; 
  final TextEditingController  controller;
  final String hintText;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,style: TextStyle(
          color: AppConstants.kBlackColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500
        ),),
        SizedBox(height: 5.h,),
        TextFormField(
          
          controller: controller,
          validator:  validator,
          obscureText: hide,
          

          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[350]
            ),
            
            
            filled: true,
            fillColor: AppConstants.kwhiteColor,
            border:  InputBorder.none,
            suffixIcon: isPassword ?  
            
            
             GestureDetector(
               onTap: ontab,
               child: Icon(
                hide ? Icons.visibility_off  :  Icons.visibility
                           ),
             ) : null
            
            
          ),
          
          
        
        ),
      ],
    );
  }
}