import 'package:alisoncart/controllers/auth_controller.dart';
import 'package:alisoncart/utils/constants.dart';
import 'package:alisoncart/widgets/primary_button.dart';
import 'package:alisoncart/widgets/primary_text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topRight,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppConstants.authBg),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(top: 45.h, right: 10.w),
                      child: Text(
                        'Skip >',
                        style: TextStyle(
                          color: AppConstants.kwhiteColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Obx(() {
                  return Container(
                    color: AppConstants.kLightWhiteColor,
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 23.h,
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h),
                          Text(
                            'Login',
                            style: TextStyle(
                              color: AppConstants.kBlackColor,
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 40.h),
                
                          PrimaryTextFieldWidget(
                            hintText: 'eg:jhone@example.com',
                            controller: emailController,
                            label: 'Email Address',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Email is required";
                              }
                              if (!value.contains('@')) {
                                return "Enter valid email";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 30.h),
                          PrimaryTextFieldWidget(
                            controller: passwordController,
                            label: 'Password',

                            hintText: '********',
                            isPassword: true,
                            hide: authController.hide.value,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password is required";
                              }
                              if (value.length < 6) {
                                return "Minimum 6 characters required";
                              }
                              return null;
                            },
                            ontab: () {
                              authController.togglePassword();
                            },
                          ),
                           SizedBox(height: 10.h),
                
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot password?',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppConstants.kBlackColor,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                          ),
                              SizedBox(height: 10.h),
                
                          authController.isloading.value
                              ? Center(
                                  child: SizedBox(
                                    height: 35.h,
                                    child: CircularProgressIndicator(
                                      color: AppConstants.kPrimaryColor,
                                    ),
                                  ),
                                )
                              : PrimaryButton(btntxt: 'Login', onpress: () {
                
                                if(_formKey.currentState!.validate()){
                                  authController.login(email: emailController.text.trim(),password: passwordController.text.trim());
                
                                }
                              }),
                
                          SizedBox(height: 20.h),
                
                          Center(
                            child: RichText(
                              text: TextSpan(
                                text: "Don't have an account? ",
                                style: const TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Sign up",
                                    style: TextStyle(
                                      color: AppConstants.kBlackColor,
                                      decoration: TextDecoration.underline,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
