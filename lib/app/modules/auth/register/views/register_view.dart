import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_app_frontend/app/core/responsives/main_responsive.dart';
import 'package:todo_app_frontend/app/modules/auth/register/views/register_mobile.dart';
import 'package:todo_app_frontend/app/modules/auth/register/views/register_tablet.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});
  @override
  Widget build(BuildContext context) {
    return MainResponsive(
      small: RegisterMobile(),
      medium: RegisterTablet(),
    );
  }
}
