import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violetButton.dart';

class SignIn extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 30.w,
          right: 30.w,
          top: 80.h,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login \nTo Your Account",
                style: TextStyle(
                  color: AppColors.violetColor,
                  fontSize: 38.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: AppStyles().textFieldDecoration("E-mail Address"),
              ),
              TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                decoration: AppStyles().textFieldDecoration("Enter Password"),
              ),
              SizedBox(
                height: 110.h,
              ),
              VioletButton("Login", () {}),
              SizedBox(
                height: 10.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "--OR--",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/icons/google 1.png'),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook 1.png')),
                ],
              ),
              SizedBox(
                height: 58.h,
              ),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        text: "Don’t have registered yet?  ",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w300,
                            color: AppColors.blackColor),
                        children: [
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.violetColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.toNamed(signUp),
                      )
                    ])),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
