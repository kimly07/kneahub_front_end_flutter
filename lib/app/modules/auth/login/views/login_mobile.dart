import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/themes/font_theme.dart';

import '../../../../constants/customs/auth_custom_bg_auth.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../widgets/login_form.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.lightBg.withValues(alpha: 0.3),
              AppColors.bgColorTwo.withValues(alpha: 0.3),
              AppColors.lightBg.withValues(alpha: 0.3),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: -40,
              left: -100,
              child: AuthCustomBgAuth(size: 200, color: AppColors.bgColorTwo),
            ),
            Positioned(
              bottom: -100,
              right: -170,
              child: AuthCustomBgAuth(size: 400, color: AppColors.bgColorThree),
            ),
            Positioned(
              bottom: 50,
              left: -140,
              child: AuthCustomBgAuth(size: 500, color: AppColors.loginBgOne),
            ),

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Welcome Back!',
                    textSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    textAlign: TextAlign.center,
                    text: 'Please login to your account, you have\nbeen missed',
                    textSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 400),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightBg, width: 2),
                        color: Colors.white.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0.7, sigmaY: 0.7),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: SingleChildScrollView(child: LoginForm()),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
