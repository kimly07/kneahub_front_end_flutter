import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_elevated_btn.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_textfield.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';
import 'dart:ui';
import '../../../../constants/widgets/social_button.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class MobileLoginForm extends StatelessWidget {
  const MobileLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 420),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.45),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.5),
                width: 1.2,
              ),
            ),
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 14),
                CustomTextField(
                  label: 'Email',
                  hintText: 'tinfy@email.com',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(height: 14),
                CustomTextField(
                  label: 'Password',
                  hintText: 'Password at least 8 letters',
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 30),

                CustomElevatedBtn(
                  text: "Login",
                  icon: Icon(Icons.login),
                  width: double.infinity,
                  height: 45,
                  textSize: 16,
                  isLoading: RxBool(false),
                  gradient: LinearGradient(
                    colors: [AppColors.primary, AppColors.primary],
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
                SizedBox(height: 28),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: AppColors.primary.withValues(alpha: 0.12),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
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
                SizedBox(height: 28),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SocialButton(
                        boxShape: BoxShape.circle,
                        backgroundColor: AppColors.lightBg,
                        height: 60.w,
                        // imageSize: 40.h,
                        onPress: () {},
                        assetImage: AssetImage('assets/google.png'),
                        textColor: AppColors.darkText,
                        textSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
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
