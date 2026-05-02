import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '';
class CustomPinPut extends StatelessWidget {
  final int length;
  final FocusNode _focusNode = FocusNode();
  final Function(String)? onCompleted;
  final TextEditingController? otpController;

  CustomPinPut({super.key, this.length = 6, this.onCompleted, this.otpController });

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      margin: EdgeInsets.symmetric(horizontal: 6),
      textStyle: TextStyle(
        fontSize: 24,
        color: Colors.black87,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        border: Border.all(color: Color(0xFF2D2D2D), width: 2),
      ),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Colors.white,
        border: Border.all(color: Color(0xFF2D2D2D), width: 2),
      ),
    );
    return Pinput(
      controller: otpController,
      length: length,
      focusNode: _focusNode,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      pinputAutovalidateMode: PinputAutovalidateMode.disabled,
      showCursor: true,
      keyboardType: TextInputType.number,
      onCompleted: (value) {
        if(value.length == length) {
          onCompleted?.call(value);
        }
      },
    );
  }
}

