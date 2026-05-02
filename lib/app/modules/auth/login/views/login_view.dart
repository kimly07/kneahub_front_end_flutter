import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app_frontend/app/constants/customs/auth_custom_bg_auth.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';
import 'package:todo_app_frontend/app/core/responsives/main_responsive.dart';
import 'package:todo_app_frontend/app/modules/auth/login/views/login_mobile.dart';
import 'package:todo_app_frontend/app/modules/auth/login/widgets/mobile_login_form.dart';

import '../controllers/login_controller.dart';
import 'login_tablet.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainResponsive(
      small: LoginMobile(),
      medium: LoginTablet(),
    );
  }
}
