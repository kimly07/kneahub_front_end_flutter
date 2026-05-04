import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String? text;
  final Color? textColor;
  final Color? btnBackgroundColor;
  final Gradient? gradient;
  final Color? circularProgressColor;
  final List<BoxShadow>? shadows;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
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
    this.width,
    this.textColor,
    required this.isLoading,
    this.textSize = 16.0,
    this.icon,
    this.circularProgressColor,
    this.shadows,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final bool loading = isLoading.value;
      final Color resolvedTextColor = textColor ?? AppColors.darkText;

      return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: gradient != null
                ? Colors.transparent
                : (btnBackgroundColor ?? Colors.black),
            disabledBackgroundColor: gradient != null
                ? AppColors.loginBgLight
                : Colors.grey.shade300,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            foregroundColor: resolvedTextColor,
            elevation: 0,
          ),
          onPressed: loading ? null : onPressed,
          child: Ink(
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              gradient: (!loading && gradient != null) ? gradient : null,
              color: (!loading && gradient != null)
                  ? null
                  : (loading
                        ? (btnBackgroundColor ?? Colors.black).withValues(alpha:  0.6)
                        : null),
              boxShadow: loading ? null : shadows,
            ),
            child: SizedBox(
              width: width,
              height: height,
              child: Center(
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
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (icon != null) ...[
                            icon!,
                            const SizedBox(width: 10),
                          ],
                          CustomText(
                            text: text ?? '',
                            color: resolvedTextColor,
                            textSize: textSize,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
