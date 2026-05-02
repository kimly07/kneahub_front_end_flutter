import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/modules/auth/register/views/register_mobile.dart';

class RegisterTablet extends StatelessWidget {
  const RegisterTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterMobile(),
    );
  }
}
