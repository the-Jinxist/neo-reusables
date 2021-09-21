import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';
import 'package:neo_reusables/src/widgets/texts.dart';

final SizeConfig config = SizeConfig();

class NeoButton extends StatelessWidget {
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

  const NeoButton({
    Key? key,
    this.height,
    this.width,
    required this.onClick,
    required this.text,
    this.radius,
    this.buttonColor,
    this.textColor,
    this.isLoading = false,
    this.progressColor,
    this.textSize,
    this.fontWeight,
    this.isOutline = false,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: buttonColor ?? Theme.of(context).colorScheme.secondary,
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
        splashColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
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
                      color: borderColor ??
                          Theme.of(context).colorScheme.secondary,
                    )
                  : null),
          child: Center(
              child: isLoading
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
                  : NeoText(
                      text: text,
                      textColor: textColor ?? Colors.white,
                      fontSize: textSize == null
                          ? config.sp(15).toDouble()
                          : config.sp(textSize).toDouble(),
                      fontWeight: fontWeight ?? FontWeight.normal,
                    )),
        ),
      ),
    );
  }
}
