import 'package:flutter/material.dart';

class NeoText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextDecoration? decoration;
  final double? lineHeight;
  final double? letterSpacing;
  final String? fontFamily;

  const NeoText(
      {required this.text,
      this.fontSize,
      this.textColor,
      Key? key,
      this.textAlign,
      this.fontWeight,
      this.maxLines,
      this.lineHeight,
      this.letterSpacing,
      this.fontFamily,
      this.decoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        color: textColor ?? Colors.black,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        height: lineHeight,
        decoration: decoration,
        fontSize: fontSize
      )
    );
  }
}
