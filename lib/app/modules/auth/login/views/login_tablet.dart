import 'dart:ui';
import 'package:fluid_background/fluid_background.dart';

import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/themes/font_theme.dart';
import 'package:todo_app_frontend/app/modules/auth/login/widgets/tablet_login_form.dart';
import '../../../../constants/customs/auth_custom_bg_auth.dart';
import '../../../../constants/themes/app_color_theme.dart';
import '../widgets/mobile_login_form.dart';

class LoginTablet extends StatelessWidget {
  const LoginTablet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -40,
            left: -100,
            child: AuthCustomBgAuth(size: 300, color: AppColors.bgColorTwo),
          ),
          Positioned(
            bottom: -100,
            right: -170,
            child: AuthCustomBgAuth(size: 500, color: AppColors.bgColorThree),
          ),
          Positioned(
            bottom: 50,
            left: -140,
            child: AuthCustomBgAuth(size: 600, color: AppColors.loginBgOne),
          ),

          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(28),
                child: Row(
                  children: [
                    Expanded(
                      flex: 45,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.bgColorTwo,
                              AppColors.bgColorTwo.withValues(alpha: 0.75),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: -30,
                              right: -30,
                              child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withValues(alpha: 0.08),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -50,
                              left: -50,
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withValues(alpha: 0.06),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(46),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.check_rounded,
                                          color: AppColors.bgColorTwo,
                                          size: 20,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      CustomText(
                                        text: 'KneaHub',
                                        textSize: 20,
                                        color: AppColors.darkText,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                  const Spacer(),

                                  CustomText(
                                    text: 'Manage your tasks\nthe best way',
                                    color: AppColors.darkText,
                                    textSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  const SizedBox(height: 16),

                                  CustomText(
                                    text:
                                        'Stay organized and productive with\nyour daily tasks, all in one place.',
                                    color: AppColors.darkText,
                                    textSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  const Spacer(),

                                  Center(
                                    child: Container(
                                      width: 180,
                                      height: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withValues(
                                          alpha: 0.1,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Icon(
                                        Icons.task_alt_rounded,
                                        size: 90,
                                        color: Colors.white.withValues(
                                          alpha: 0.6,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Expanded(
                      flex: 50,
                      child: Container(
                        color: Colors.white,
                        child: Center(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 88,
                              vertical: 32,
                            ),
                            child: TabletLoginForm(),

                          ),
                        ),
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
