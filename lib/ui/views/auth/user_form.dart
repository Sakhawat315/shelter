import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/app_colors.dart';
import 'package:shelter/ui/styles/styles.dart';
import 'package:shelter/ui/widgets/violetButton.dart';

class UserForm extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _birthController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: 50.h,
            left: 30.w,
            right: 30.w,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "Tell Us More About You.",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: AppColors.violetColor,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  "We will not share your information outside this application.",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w300,
                    color: AppColors.blackColor,
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                TextFormField(
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  decoration: AppStyles().textFieldDecoration("Full Name"),
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: AppStyles().textFieldDecoration("Phone Number"),
                ),
                TextField(
                  controller: _addressController,
                  keyboardType: TextInputType.streetAddress,
                  decoration: AppStyles().textFieldDecoration("Address"),
                ),
                TextFormField(
                  controller: _birthController,
                  keyboardType: TextInputType.datetime,
                  decoration: AppStyles().textFieldDecoration("Date of Birth"),
                ),
                SizedBox(
                  height: 192.h,
                ),
                VioletButton("Submit", () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
