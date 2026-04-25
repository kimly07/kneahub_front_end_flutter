
import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';

class AuthCustomBgAuth extends StatelessWidget {
  final double size;
  final Color color;
  final double opacity;
  const AuthCustomBgAuth({
    super.key,
    this.size = 300.0,
    this.color = AppColors.primaryDark,
    this.opacity = 0.5
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color.withValues(alpha: 0.4),
            color.withValues(alpha: 0),
          ],
          // stops: const [0.0, 1.0],
        ),
      ),
    );
  }
}
