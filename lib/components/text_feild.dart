import 'package:assessment/constant/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool? val = false;
  final String? text;
  final String? errorText;
  final TextEditingController? controller;
  final Icon? icon;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final ValueChanged? onChange;
  final int? maxLine;
  final int? maxLength;
  final TextInputType? textInputType;

  const CustomTextField(
      {Key? key,
      this.text,
      this.errorText,
      this.controller,
      this.icon,
      this.onChange,
      this.maxLine,
      this.maxLength,
      this.prefixIcon,
      this.suffixIcon,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      controller: controller,
      maxLines: maxLine,
      maxLength: maxLength,
      keyboardType: textInputType,
      cursorColor: blackColor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: text,
        hintStyle: TextStyle(
          color: greyColor,
          fontWeight: FontWeight.normal,
        ),
        errorText: errorText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightGreyColor, width: 2.0),
          borderRadius: BorderRadius.circular(defPadding / 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightGreyColor, width: 2.0),
          borderRadius: BorderRadius.circular(defPadding / 2),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightGreyColor, width: 2.0),
          borderRadius: BorderRadius.circular(defPadding / 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: lightRedColor, width: 2.0),
          borderRadius: BorderRadius.circular(defPadding / 2),
        ),
      ),
    );
  }
}
