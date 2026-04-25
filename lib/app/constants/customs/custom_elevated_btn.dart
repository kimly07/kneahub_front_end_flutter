import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_frontend/app/constants/themes/app_theme.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? btnBackgroundColor;
  final Gradient? gradient;
  final Color? circularProgressColor;
  final List<BoxShadow>? shadows;
  final VoidCallback? onPressed;
  final double width;
  final double height;
  final RxBool isLoading;
  final double textSize;
  final Widget? icon;
  final BorderRadius borderRadius;

  const CustomElevatedBtn({
    super.key,
    this.btnBackgroundColor,
    this.gradient,
    this.onPressed,
    this.text,
    required this.width,
    this.textColor,
    required this.isLoading,
    this.textSize = 18.0,
    this.icon,
    this.circularProgressColor,
    this.shadows,
    required this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final bool loading = isLoading.value;

      return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          gradient: loading ? null : gradient,
          boxShadow: shadows,
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: gradient != null
                ? Colors.transparent
                : (btnBackgroundColor ?? Colors.black),
            disabledBackgroundColor: gradient != null
                ? Colors.transparent
                : AppTheme.dark().colorScheme.primary.withValues(alpha: 0.5),
            shadowColor: Colors.transparent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          onPressed: loading ? null : onPressed,
          child: loading
              ? SizedBox(
                  height: 22,
                  width: 22,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: circularProgressColor ?? Colors.white,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (icon != null) ...[icon!, const SizedBox(width: 10)],
                    Text(
                      text ?? '',
                      style: TextStyle(
                        color: textColor ?? Colors.white,
                        fontSize: textSize,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
        ),
      );
    });
  }
}
