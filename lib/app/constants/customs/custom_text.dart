import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double textSize;
  final FontWeight fontWeight; 
  final Color color;           
  final TextStyle? textStyle;
  final TextAlign? textAlign;

  const CustomText({
    super.key, 
    required this.text, 
    this.textSize = 14.0,           
    this.fontWeight = FontWeight.normal, 
    this.color = Colors.black,      
    this.textStyle,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        fontSize: textSize,
        fontWeight: fontWeight,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}