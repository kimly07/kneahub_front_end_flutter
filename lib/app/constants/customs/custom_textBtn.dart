import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomTextBtn extends StatefulWidget {
  final VoidCallback? onPressed;
  final String text;

  const CustomTextBtn({super.key, this.onPressed, required this.text});

  @override
  State<CustomTextBtn> createState() => _CustomTextBtnState();
}

class _CustomTextBtnState extends State<CustomTextBtn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: CustomText(text: widget.text),
    );
  }
}
