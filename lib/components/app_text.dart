import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? clr;
  final double? size;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;
  final int? maxLines;

  const AppText(
      {Key? key,
        required this.text,
        this.clr,
        this.size,
        this.fontWeight,
        this.maxLines,
        this.textDecoration,
        this.textOverflow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: textOverflow,
      maxLines: maxLines,
      style: TextStyle(
        color: clr,
        fontSize: size,
        fontWeight: fontWeight,
        // fontFamily: "Outfit",
        decoration: textDecoration,
      ),
    );
  }
}
