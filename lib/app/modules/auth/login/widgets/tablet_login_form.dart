import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_elevated_btn.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_textBtn.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_textfield.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';
import 'package:todo_app_frontend/app/constants/themes/font_theme.dart';
import 'package:todo_app_frontend/app/modules/auth/login/controllers/login_controller.dart';

class TabletLoginForm extends StatelessWidget {
  TabletLoginForm({super.key});

  final controller = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomText(
                text: 'Login'.toUpperCase(),
                textSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
          SizedBox(height: 20),
          CustomTextField(
            controller: controller.emailController,
            label: 'Email',
            prefixIcon: Icons.email_outlined,
            backGround: Colors.transparent,
            hintText: "Email Address",
            hintTextColor: AppColors.darkBg,
            border: BorderSide(color: AppColors.glassBorder, width: 1),
            errorFormText: TextStyle(fontSize: 15),
            validator: (value) {
              if (value == null || value.isEmpty) {
                var error = 'Please input your email';
                return error;
              }
              return null;
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            controller: controller.passwordController,
            label: 'Password',
            prefixIcon: Icons.lock_outline,
            backGround: Colors.transparent,
            hintText: "Password",
            isPassword: true,
            hintTextColor: AppColors.darkBg,
            border: BorderSide(color: AppColors.glassBorder, width: 1),
            errorFormText: TextStyle(fontSize: 15),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please input your password";
              }
              return null;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextBtn(text: 'Forgot password?'),
            ],
          ),
          SizedBox(height: 20,),
          CustomElevatedBtn(
            borderRadius: BorderRadius.circular(30),
            width: double.infinity,
            isLoading: controller.isLoading,
            height: 50,
            text: 'Login',
            // btnBackgroundColor: Colors.pinkAccent,
            circularProgressColor: Colors.white,
            gradient: LinearGradient(
              colors: [
                AppColors.primaryDark,
                AppColors.bgColorFive,
                AppColors.bgColorTwo,
              ],
            ),
            onPressed: () {
              controller.login();
              log('click btn login');
            },
          ),
          SizedBox(height: 50),
          Row(
            children: [
              Expanded(child: Divider(color: AppColors.glassBorder)),
              SizedBox(width: 10),
              CustomText(
                text: 'or continue with',
                color: AppColors.lightTextSub,
              ),
              SizedBox(width: 10),

              Expanded(child: Divider(color: AppColors.glassBorder)),
            ],
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Center(
                child: Image.asset("assets/google.png", height: 28, width: 28),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
