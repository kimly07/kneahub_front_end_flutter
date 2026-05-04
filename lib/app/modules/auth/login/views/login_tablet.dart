import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';
import '../../../../constants/customs/custom_text.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../../../../constants/widgets/glow_orb.dart';
import '../widgets/mobile_login_form.dart';


class LoginTablet extends StatelessWidget {
  const LoginTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.bgGradientStart,
                  AppColors.bgGradientMiddle,
                  AppColors.bgGradientEnd,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          Positioned(
            top: -80.h,
            left: -60.w,
            child: GlowOrb(color: AppColors.orbPurple, size: 350.r),
          ),
          Positioned(
            bottom: 10.h,
            right: -70.w,
            child: GlowOrb(color: AppColors.orbBlue, size: 300.r),
          ),
          Positioned(
            top: 180.h,
            right: 10.w,
            child: GlowOrb(color: AppColors.orbPink, size: 180.r),
          ),
          Positioned(
            bottom: 120.h,
            left: 0,
            child: GlowOrb(color: AppColors.orbGreen, size: 160.r),
          ),

          SafeArea(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 90.r,
                          height: 90.r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary,
                                AppColors.primaryLight,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primary.withValues(alpha: 0.35),
                                blurRadius: 40.r,
                                spreadRadius: 6.r,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.login,
                            color: Colors.white,
                            size: 42.r,
                          ),
                        ),
                        SizedBox(height: 24.h),
                        ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [AppColors.primaryDark, AppColors.secondary],
                          ).createShader(bounds),
                          child: CustomText(
                            text: 'Welcome Back',
                            textSize: 42.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkText,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        CustomText(
                          text: 'You have been missed',
                          textSize: 16.sp,
                          color: AppColors.lightText,
                          fontWeight: FontWeight.w300,
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Center(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.w,
                        vertical: 40.h,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          // form somrab login
                          MobileLoginForm(),

                          SizedBox(height: 32.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                text: "Don't have an account?",
                                textSize: 14.sp,
                              ),
                              SizedBox(width: 4.w),
                              ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [
                                    AppColors.primary,
                                    AppColors.primary,
                                  ],
                                ).createShader(bounds),
                                child: GestureDetector(
                                  onTap: () => Get.offNamed('/register'),
                                  child: CustomText(
                                    text: 'Sign Up',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.darkText,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
