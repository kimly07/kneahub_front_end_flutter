import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_textBtn.dart';

import '../../../../constants/customs/custom_elevated_btn.dart';
import '../../../../constants/customs/custom_text.dart';
import '../../../../constants/customs/custom_textfield.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../../../../constants/themes/font_theme.dart';
import '../../../../constants/widgets/social_button.dart';

class MobileRegisterForm extends StatelessWidget {
  const MobileRegisterForm({super.key});

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
              color: Colors.white.withValues(alpha: 0.55),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: Colors.white.withValues(alpha: 2),
                width: 1.2,
              ),
            ),
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 14),
                CustomTextField(
                  label: 'Full Name',
                  hintText: 'tinfy@email.com',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(height: 14),
                CustomTextField(
                  label: 'Username',
                  hintText: 'tinfy007',
                  prefixIcon: Icons.mail_outline_rounded,
                ),
                SizedBox(height: 14),
                CustomTextField(
                  label: 'Password',
                  hintText: 'Password at least 8 letters',
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 30),

                Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.primaryLight],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withValues(alpha: 0.35),
                        blurRadius: 24,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: CustomElevatedBtn(
                    btnBackgroundColor: AppColors.primary,
                    text: 'Login',
                    width: double.infinity,
                    isLoading: RxBool(false),
                    height: 20.0,
                    onPressed: () {},
                  ),
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
                          fontSize: 12,
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
                    SocialButton(
                      onPress: () {},
                      assetImage: AssetImage('assets/google.png'),
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
