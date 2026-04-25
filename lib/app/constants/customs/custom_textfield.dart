import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';
import 'package:todo_app_frontend/app/constants/themes/app_color_theme.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final IconData? prefixIcon;
  final String? hintText;
  final String? initialValue;
  final Color? backGround;
  final TextEditingController? controller;
  final bool isPassword;
  final bool enabled;
  final String? Function(String?)? validator;
  final BorderSide? border;
  final Color? hintTextColor;
  final Color? labelColor;

  const CustomTextField({
    super.key,
    this.label = '',
    this.prefixIcon,
    this.hintText,
    this.initialValue,
    this.controller,
    this.isPassword = false,
    this.enabled = true,
    this.validator,
    this.backGround,
    this.border,
    this.hintTextColor,
    this.labelColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final borderSide =
        widget.border ??
        BorderSide(color: Colors.white.withValues(alpha: 0.3), width: 1.5);

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: borderSide,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: widget.label),
        SizedBox(height: 8),
        TextFormField(
          validator: widget.validator,
          initialValue: widget.initialValue,
          controller: widget.controller,
          enabled: widget.enabled,
          obscureText: obscureText,
          cursorColor: AppColors.lightText,
          style: TextStyle(color: AppColors.lightText, fontSize: 15),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: widget.hintTextColor ?? Colors.grey,
              fontSize: 14,
            ),
            prefixIcon: widget.prefixIcon != null
                ? Icon(widget.prefixIcon)
                : null,
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: () => setState(() => obscureText = !obscureText),
                  )
                : null,
            filled: true,
            fillColor: widget.backGround,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            border: border,
            enabledBorder: border,
            focusedBorder: border,
            disabledBorder: border,
            errorBorder: border,
            focusedErrorBorder: border
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: widget.border ?? BorderSide.none,
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: borderSide,
            // ),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: borderSide,
            // ),
            // disabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: borderSide,
            // ),
            // errorBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(12),
            //   borderSide: borderSide,
            // ),
            // focusedErrorBorder: OutlineInputBorder(borderSide: borderSide),
          ),
        ),
      ],
    );
  }
}
