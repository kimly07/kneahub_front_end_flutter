import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/modules/auth/login/controllers/login_controller.dart';
import 'package:todo_app_frontend/app/modules/auth/login/widgets/mobile_login_form.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../../../../constants/widgets/glow_orb.dart';
import 'package:get/get.dart';

class LoginMobile extends StatelessWidget {
  const LoginMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final register = Get.find<LoginController>();
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
            child: GlowOrb(color: AppColors.orbPurple, size: 280.r),
          ),
          Positioned(
            bottom: 10.h,
            right: -70.w,
            child: GlowOrb(color: AppColors.orbBlue, size: 240.r),
          ),
          Positioned(
            top: 180.h,
            right: 10.w,
            child: GlowOrb(color: AppColors.orbPink, size: 140.r),
          ),
          Positioned(
            bottom: 0.h,
            left: -100.h,
            child: GlowOrb(color: AppColors.orbPink, size: 220.r),
          ),
          Positioned(
            top: 400.h,
            left: 50.w,
            child: GlowOrb(color: AppColors.orbPink, size: 330.r),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 40.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 62.r,
                      height: 62.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [AppColors.primary, AppColors.primaryLight],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primary.withValues(alpha: 0.35),
                            blurRadius: 28.r,
                            spreadRadius: 4.r,
                          ),
                        ],
                      ),
                      child: Icon(Icons.login, color: Colors.white, size: 28.r),
                    ),
                    SizedBox(height: 16.h),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [AppColors.primaryDark, AppColors.secondary],
                      ).createShader(bounds),
                      child: CustomText(
                        text: 'Sing In',
                        textSize: 35,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkText,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    CustomText(
                      text: 'You have been missed',
                      textSize: 13.sp,
                      color: AppColors.lightText,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(height: 28.h),
                    MobileLoginForm(),
                    SizedBox(height: 40.h),
                    Container(
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 3.w),
                          CustomText(
                            text: "Don't have an account?",
                            textSize: 14.sp,
                          ),
                          SizedBox(width: 3.w),

                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [AppColors.primary, AppColors.primary],
                            ).createShader(bounds),
                            child: GestureDetector(
                              onTap: () => Get.offNamed('/register'),
                              child: CustomText(
                                text: 'Sign Up',
                                // textSize: 35,
                                fontWeight: FontWeight.bold,
                                color: AppColors.darkText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
