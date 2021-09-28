import 'package:flutter/material.dart';

///A simplm wrapper over the [Text] class,
///P.S It uses the config class for it's font size. Uses the sizeConfig.sp(15)
///in the [main.dart] file first
class NeoText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;

  ///Specifies the alignment of the text. Takes in values from the TextAlignment enum
  final TextAlign? textAlign;

  ///Adjusts the font weight of the text, as set in your pubspec.yaml
  final FontWeight? fontWeight;

  ///The maximum amount of lines that the text can contain, if the containing height/width is too small
  ///the text will overflow with an elipsis. Default value is `1`
  final int? maxLines;

  ///Specifies the text decoration that will be applied on the text, this can include TextDecoration.underline and so on
  final TextDecoration? decoration;

  ///Sepecifies the height of the text
  final double? lineHeight;

  ///Sepecifies the spacing between the text
  final double? letterSpacing;

  ///Adjusts the font family of the text, as set in your pubspec.yaml
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
    return Text(text!,
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
            fontSize: fontSize));
  }
}
