import 'package:flutter/material.dart';
import 'package:pay_small_small/commons/colors.dart';
import 'package:pay_small_small/commons/size_config.dart';

class TitleText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;
  final double? lineHeight;
  final double? letterSpacing;

  const TitleText(
      {required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.maxLines,
      this.lineHeight,
      this.letterSpacing,
      this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.headline1!.copyWith(
          fontSize: fontSize != null
              ? SizeConfig().sp(fontSize).toDouble()
              : SizeConfig().sp(25).toDouble(),
          letterSpacing: letterSpacing ?? 0.8,
          height: lineHeight ?? 1.5,
          color: textColor ?? XColors.normalTextColor,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}

class NormalText extends StatelessWidget {
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextDecoration? decoration;
  final double? lineHeight;
  final double? letterSpacing;

  const NormalText(
      {required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.fontWeight,
      this.maxLines,
      this.lineHeight,
      this.letterSpacing,
      this.decoration});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
          decoration: decoration,
          letterSpacing: letterSpacing ?? 0.25,
          height: lineHeight ?? 1.5,
          fontSize: fontSize != null
              ? SizeConfig().sp(fontSize).toDouble()
              : SizeConfig().sp(15).toDouble(),
          color: textColor ?? XColors.normalTextColor,
          fontWeight: fontWeight),
    );
  }
}

class SubtitleText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;

  const SubtitleText(
      {required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.headline2!.copyWith(
          fontWeight: FontWeight.w800,
          fontSize: fontSize != null
              ? SizeConfig().sp(fontSize).toDouble()
              : SizeConfig().sp(20).toDouble(),
          color: textColor ?? Colors.black),
    );
  }
}

class AccentText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;

  const AccentText(
      {required this.text,
      this.fontSize,
      this.textColor,
      this.textAlign,
      this.fontWeight,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines ?? 1,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign ?? TextAlign.start,
      style: Theme.of(context).textTheme.headline3!.copyWith(
          fontWeight: fontWeight,
          fontSize: fontSize != null
              ? SizeConfig().sp(fontSize).toDouble()
              : SizeConfig().sp(15).toDouble(),
          color: textColor ?? XColors.normalTextColor),
    );
  }
}
