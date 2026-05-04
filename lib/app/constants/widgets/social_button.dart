import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class SocialButton extends StatelessWidget {
  final String? label;
  final String? text;
  final Color? textColor;
  final double textSize;
  final IconData? icon;
  final Color? iconColor;
  final VoidCallback? onPress;
  final AssetImage? assetImage;
  final double? width;
  final double height;
  final BorderRadius borderRadius;
  final Color backgroundColor;
  final double imageSize;
  final double iconSize;
  final BoxShape boxShape;
  final FontWeight? fontWeight;
  const SocialButton({
    super.key,
    this.fontWeight,
    this.label,
    this.text,
    this.textColor,
    this.textSize = 14,
    this.icon,
    this.iconColor,
    this.onPress,
    this.assetImage,
    this.width,
    this.height = 56,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.backgroundColor = Colors.white,
    this.imageSize = 28,
    this.iconSize = 22,
    this.boxShape = BoxShape.rectangle,
  }) : assert(
         icon != null || assetImage != null,
         'Either icon or assetImage must be provided',
       );

  @override
  Widget build(BuildContext context) {
    final bool isCircle = boxShape == BoxShape.circle;
    final bool hasText = text != null && text!.isNotEmpty;

    final Widget iconWidget = assetImage != null
        ? Image(
            image: assetImage!,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.contain,
          )
        : Icon(icon, color: iconColor, size: iconSize);

    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: boxShape,
          color: backgroundColor,
          borderRadius: isCircle ? null : borderRadius,
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, 2),
              color: Colors.grey.shade300,
            ),
          ],
        ),
        child: Center(
          child: hasText
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconWidget,
                    SizedBox(width: 10),
                    Text(
                      text ?? '',
                      style: TextStyle(
                        color: textColor,
                        fontSize: textSize,
                        fontFamily: GoogleFonts.poppins.toString(),
                        fontWeight: fontWeight,
                      ),
                    ),
                  ],
                )
              : iconWidget,
        ),
      ),
    );
  }
}
