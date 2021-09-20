import 'package:flutter/material.dart';


class XButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Function onClick;
  final String text;
  final double? radius;
  final Color? buttonColor;
  final Color? textColor;
  final bool isLoading;
  final Color? progressColor;
  final double? textSize;
  final FontWeight? fontWeight;
  final bool isOutline;
  final Color? borderColor;

  XButton(
      {required this.onClick,
      required this.text,
      this.height,
      this.width,
      this.radius,
      this.buttonColor,
      this.textColor,
      this.isLoading = false,
      this.progressColor,
      this.textSize,
      this.fontWeight,
      this.isOutline = false,
      this.borderColor});

  final SizeConfig config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor ?? Theme.of(context).accentColor,
      borderRadius: radius != null
          ? BorderRadius.circular(radius!)
          : BorderRadius.circular(10.0),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          if (!isLoading) {
            onClick();
          }
        },
        splashColor: XColors.selectedTabColor.withOpacity(0.5),
        splashFactory: InkRipple.splashFactory,
        borderRadius: radius != null
            ? BorderRadius.circular(radius!)
            : BorderRadius.circular(10.0),
        child: Container(
          height: height != null
              ? config.sh(height!).toDouble()
              : config.sh(45).toDouble(),
          width: width != null
              ? config.sw(width!).toDouble()
              : config.sw(150).toDouble(),
          decoration: BoxDecoration(
              borderRadius: radius != null
                  ? BorderRadius.circular(radius!)
                  : BorderRadius.circular(10.0),
              border: isOutline
                  ? Border.all(
                      color: borderColor ?? Theme.of(context).accentColor,
                    )
                  : null),
          child: Center(
              child: !isLoading
                  ? TitleText(
                      text: text,
                      textColor: textColor ?? Colors.white,
                      fontSize: textSize == null
                          ? config.sp(17).toDouble()
                          : config.sp(textSize).toDouble(),
                      fontWeight: fontWeight ?? FontWeight.normal,
                    )
                  : isLoading
                      ? SizedBox(
                          height: config.sh(20).toDouble(),
                          width: config.sh(20).toDouble(),
                          child: CircularProgressIndicator(
                            strokeWidth: 2.0,
                            valueColor: progressColor != null
                                ? AlwaysStoppedAnimation<Color?>(progressColor)
                                : const AlwaysStoppedAnimation<Color?>(
                                    Colors.white),
                          ),
                        )
                      : TitleText(
                          text: text,
                          textColor: textColor ?? Colors.white,
                          fontSize: textSize == null
                              ? config.sp(17).toDouble()
                              : config.sp(textSize).toDouble(),
                          fontWeight: fontWeight ?? FontWeight.normal,
                        )),
        ),
      ),
    );
  }
}
