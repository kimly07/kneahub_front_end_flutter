import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';
import 'package:todo_app_frontend/app/modules/auth/register/widgets/mobile_register_form.dart';

import '../../../../constants/widgets/glow_orb.dart';

class RegisterMobile extends StatelessWidget {
  const RegisterMobile({super.key});

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
            top: -80,
            left: -60,
            child: GlowOrb(color: AppColors.orbPurple, size: 280),
          ),
          Positioned(
            bottom: 100,
            right: -70,
            child: GlowOrb(color: AppColors.orbPink, size: 240),
          ),
          Positioned(
            bottom: 0,
            left: -70,
            child: GlowOrb(color: AppColors.orbBlue, size: 240),
          ),
          Positioned(
            top: 180,
            right: 10,
            child: GlowOrb(color: AppColors.primary, size: 140),
          ),
          Positioned(
            bottom: 120,
            left: 0,
            child: GlowOrb(color: AppColors.orbGreen, size: 120),
          ),
          Positioned(
            top: 300,
            child: GlowOrb(color: AppColors.primary, size: 300),
          ),
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 62,
                      height: 62,
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
                            blurRadius: 28,
                            spreadRadius: 4,
                          ),
                        ],
                      ),
                      child: Icon(Icons.login, color: Colors.white, size: 28),
                    ),
                    SizedBox(height: 16),

                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        colors: [AppColors.primaryDark, AppColors.secondary],
                      ).createShader(bounds),
                      child: CustomText(
                        text: 'Sing Up',
                        textSize: 35,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkText,
                      ),
                      // Text(
                      //   'Sign Up',
                      //   style: TextStyle(
                      //     fontSize: 34,
                      //     fontWeight: FontWeight.w800,
                      //     color: Colors.white,
                      //     letterSpacing: -0.5,
                      //   ),
                      // ),
                    ),
                    SizedBox(height: 6),

                    CustomText(
                      text: 'Register to get more experiences',
                      textSize: 13,
                      color: AppColors.lightText,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(height: 28),
                    MobileRegisterForm(),
                    SizedBox(height: 40),

                    Container(
                      decoration: BoxDecoration(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 3),
                          ShaderMask(
                            shaderCallback: (bd) {
                              return LinearGradient(
                                colors: [
                                  AppColors.lightText,
                                  AppColors.lightText,
                                ],
                              ).createShader(bd);
                            },
                            child: CustomText(
                              text: "Already have account?",
                              color: Colors.white,
                            ),
                          ),
                          // CustomText(text: "Don't have an account?"),
                          SizedBox(width: 3),
                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [AppColors.primary, AppColors.primary],
                            ).createShader(bounds),
                            child: GestureDetector(
                              onTap: () => Get.offNamed('/login'),
                              child: CustomText(
                                text: 'Login',
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
