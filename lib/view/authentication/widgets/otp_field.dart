import 'package:assessment/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OTPField extends StatelessWidget {
  final String? errorText;
  final ValueChanged? onChange;

  const OTPField({Key? key, this.errorText, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: lightGreyColor),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: greenColor.withOpacity(0.3)),
      borderRadius: BorderRadius.circular(16),
    );
    return Center(
      child: Pinput(
        onChanged: onChange,
        length: 6,
        errorText: errorText,
        defaultPinTheme: defaultPinTheme,
        focusedPinTheme: focusedPinTheme,
        // validator: (s) {
        //   return s == '2222' ? null : 'invalid pin code';
        // },
        pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
        showCursor: true,
      ),
    );
  }
}
