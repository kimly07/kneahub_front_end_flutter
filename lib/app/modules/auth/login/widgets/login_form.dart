import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_elevated_btn.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_textfield.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';
import 'package:todo_app_frontend/app/constants/themes/font_theme.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        CustomTextField(
          label: 'Email',
          prefixIcon: Icons.email_outlined,
          backGround: AppColors.lightBg,
          hintText: "Email",
          hintTextColor: AppColors.darkBg,
          border: BorderSide(color: AppColors.glassBorder, width: 1),
        ),
        SizedBox(height: 20),
        CustomTextField(
          label: 'Password',
          prefixIcon: Icons.lock_outline,
          backGround: AppColors.lightBg,
          hintText: "Password",
          isPassword: true,
          hintTextColor: AppColors.darkBg,
          border: BorderSide(color: AppColors.glassBorder, width: 1),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: FontTheme()
                    .buildAppTheme()
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.darkSurface),
              ),
            ),
          ],
        ),
        CustomElevatedBtn(
          width: double.infinity,
          isLoading: RxBool(false),
          height: 50,
          text: 'Login',
          gradient: LinearGradient(
            colors: [AppColors.primaryDark, AppColors.bgColorOne],
          ),
        ),
        SizedBox(height: 30),
        CustomText(text: 'or continue with', color: AppColors.lightTextSub),
        SizedBox(height: 30),
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
      ],
    );
  }
}
