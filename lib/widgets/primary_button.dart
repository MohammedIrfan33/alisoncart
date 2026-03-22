import 'package:alisoncart/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryButton extends StatelessWidget {
   PrimaryButton({super.key, required this.onpress, required this.btntxt,this.btnColor,this.height,this.btntxtColor});


  final VoidCallback onpress;
  final String btntxt;
  Color ? btnColor;
  double ? height;
  Color  ? btntxtColor;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        elevation: 0,
        fixedSize: Size(double.maxFinite,  height??50.h),
        backgroundColor: btnColor ?? AppConstants.kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r)
        )



      ),
      onPressed:  onpress,
      child: Text(
        btntxt,
        style: TextStyle(
          color: btntxtColor ??  AppConstants.kwhiteColor,
          fontWeight: FontWeight.w500,
          fontSize: 20.sp
        ),
        ),
      
    );
  }
}