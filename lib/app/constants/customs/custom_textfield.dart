import 'package:flutter/material.dart';
import 'package:todo_app_frontend/app/constants/customs/custom_text.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final double labelSize;
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
  final TextStyle? errorFormText;
  final Color? prefixColor;
  final Color? suffixColor;

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
    this.errorFormText,
    this.labelSize = 15,
    this.prefixColor,
    this.suffixColor,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;
  bool _isFocused = false;

  // === Glass Light Mode Colors ===
  static const _purple = Color(0xFF8B5CF6);
  static const _labelColor = Color(0xFF6450A0);
  static const _textColor = Color(0xFF2D1B69);

  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: _purple, width: 1.5),
    );

    final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide:
          widget.border ??
          BorderSide(color: _purple.withValues(alpha: 0.15), width: 1),
    );

    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Color(0xFFEF4444), width: 1.2),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // === Label ===
        if (widget.label.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              widget.label.toUpperCase(),
              style: TextStyle(
                fontSize: widget.labelSize - 4,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.6,
                color: (widget.labelColor ?? _labelColor).withValues(alpha :0.6),
              ),
            ),
          ),

        Focus(
          onFocusChange: (focused) => setState(() => _isFocused = focused),
          child: TextFormField(
            validator: widget.validator,
            initialValue: widget.initialValue,
            controller: widget.controller,
            enabled: widget.enabled,
            obscureText: obscureText,
            cursorColor: _purple,
            style: const TextStyle(color: _textColor, fontSize: 14),
            decoration: InputDecoration(
              errorStyle:
                  widget.errorFormText ??
                  const TextStyle(
                    color: Color(0xFFEF4444),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: widget.hintTextColor ?? _labelColor.withValues(alpha: 0.35),
                fontSize: 14,
              ),
              prefixIcon: widget.prefixIcon != null
                  ? Icon(widget.prefixIcon, size: 20)
                  : null,
              prefixIconColor:
                  widget.prefixColor ??
                  (_isFocused ? _purple : _purple.withOpacity(0.45)),
              suffixIconColor: widget.suffixColor ?? _purple.withOpacity(0.45),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 20,
                      ),
                      onPressed: () =>
                          setState(() => obscureText = !obscureText),
                    )
                  : null,
              filled: true,
              fillColor: widget.backGround ?? Colors.white.withOpacity(0.7),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 15,
              ),
              border: defaultBorder,
              enabledBorder: defaultBorder,
              focusedBorder: focusedBorder,
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(color: _purple.withOpacity(0.08)),
              ),
              errorBorder: errorBorder,
              focusedErrorBorder: errorBorder,
            ),
          ),
        ),
      ],
    );
  }
}
