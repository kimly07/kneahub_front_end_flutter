import 'dart:ui';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../../constants/customs/custom_elevated_btn.dart';
import '../../../../constants/customs/custom_textfield.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../../../../constants/widgets/social_button.dart';

class MobileRegisterForm extends StatelessWidget {
  const MobileRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 420.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28.r),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.45),
              borderRadius: BorderRadius.circular(28.r),
              border: Border.all(
                color: Colors.white.withValues(alpha: 2),
                width: 1.2.w,
              ),
            ),
            padding: EdgeInsets.all(24.r),
            child: Column(
              children: [
                SizedBox(height: 14.h),
                CustomTextField(
                  label: 'Full Name',
                  hintText: 'tinfy@email.com',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(height: 14.h),
                CustomTextField(
                  label: 'Username',
                  hintText: 'tinfy007',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(height: 14.h),
                CustomTextField(
                  label: 'Password',
                  hintText: 'Password at least 8 letters',
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 30.h),
                CustomElevatedBtn(
                  text: "Sign Up",
                  icon: Icon(Icons.create, size: 20),
                  width: double.infinity,
                  height: 47,
                  textSize: 16,
                  isLoading: RxBool(false),
                  gradient: LinearGradient(
                    colors: [AppColors.primary, AppColors.loginBgLight],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  shadows: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.35),
                      blurRadius: 24,
                      offset: Offset(0, 8),
                    ),
                  ],
                  onPressed: () async {},
                ),
                // Container(
                //   width: double.infinity,
                //   height: 52.h,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [AppColors.primary, AppColors.primaryLight],
                //       begin: Alignment.centerLeft,
                //       end: Alignment.centerRight,
                //     ),
                //     borderRadius: BorderRadius.circular(16.r),
                //     boxShadow: [
                //       BoxShadow(
                //         color: AppColors.primary.withValues(alpha: 0.35),
                //         blurRadius: 24.r,
                //         offset: Offset(0, 8.h),
                //       ),
                //     ],
                //   ),
                //   child:
                //
                // ),
                SizedBox(height: 28.h),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.primary.withValues(alpha: 0.12),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(
                        'or continue with',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.lightText,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: AppColors.primary.withValues(alpha: 0.12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 28.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      boxShape: BoxShape.circle,
                      backgroundColor: AppColors.lightBg,
                      height: 60.h,
                      imageSize: 40.r,
                      onPress: () {},
                      assetImage: AssetImage('assets/google.png'),
                      textColor: AppColors.darkText,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
