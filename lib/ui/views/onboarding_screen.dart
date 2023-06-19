import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/ui/route/route.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';

class OnboardingScreen extends StatelessWidget {
  List<String> _lottieFiles = [
    "assets/files/welcome.json",
    "assets/files/categories.json",
    "assets/files/support.json",
  ];
  List<String> _title = [
    "Welcome",
    "Categories",
    "Support",
  ];
  List<String> _description = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  ];
  RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Obx(
                () => Expanded(
                  flex: 2,
                  child: Lottie.asset(_lottieFiles[_currentIndex.toInt()]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(30.w),
                  decoration: BoxDecoration(
                    color: AppColors.scaffoldColor,
                    borderRadius: BorderRadius.all(Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 10,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4.0, -4.0),
                          blurRadius: 5,
                          spreadRadius: 1.0),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          "${_title[_currentIndex.toInt()]}",
                          style: AppStyles().myTextStyle,
                        ),
                      ),
                      Obx(
                        () => Text(
                          "${_description[_currentIndex.toInt()]}",
                          style: AppStyles().descriptionStyle,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => DotsIndicator(
                              dotsCount: _lottieFiles.length,
                              position: _currentIndex.toDouble(),
                              decorator: DotsDecorator(),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              if (_currentIndex == _title.length - 1) {
                                Get.toNamed(signUp);
                              } else {
                                _currentIndex + 1;
                              }
                            },
                            child: Container(
                              height: 37.h,
                              width: 37.w,
                              child: Icon(
                                Icons.double_arrow,
                                weight: 30.w,
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.scaffoldColor,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 10,
                                      spreadRadius: 1.0,
                                    ),
                                    BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 5,
                                      spreadRadius: 1.0,
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
