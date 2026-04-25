 import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/modules/auth/login/views/login_mobile.dart';

class LoginTablet extends StatelessWidget {
  const LoginTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 500,
        child: LoginMobile(),
      ),
    );
  }
}
