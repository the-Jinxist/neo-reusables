import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';
import 'package:neo_reusables/src/widgets/text.dart';

final SizeConfig config = SizeConfig();

///A simplm wrapper over the [Container] class,
///P.S It uses the config class for it's height and width so make sure to initialize the config class
///in the [main.dart] file first
class NeoButton extends StatelessWidget {
  ///The height of the NeoButton, default is `45`
  final double? height;

  ///The width of the NeoButton , defaukt is `150`
  final double? width;

  ///This function contains the action taken when the button is clicked on
  final Function onClick;

  ///Specifies the text that shows in the middle of the button. The text widget is shown using the
  ///other reusable widget[NeoText]
  final String text;

  ///Adjusted the radius of the button. The default radius is `10`
  final double? radius;

  ///Specifies the color of the button. The default color is [colorScheme.secondaryColor]
  final Color? buttonColor;

  ///Adjusted the text color of the text in the color. The default color is [Colors.white]
  final Color? textColor;

  ///Shows the loading state of whatever operation is started when the button is clicked.
  ///The default value is [false]
  final bool isLoading;

  ///Adjusts the value color of the [CircularProgressIndicator] that instantiates in the center
  ///of the button when [isLoading] is correct
  final Color? progressColor;

  ///Adjusts the text size of the text in the button
  final double? textSize;

  ///Adjusts the font weight of the text in the button
  final FontWeight? fontWeight;

  ///When [isOutine] is true, it adds a border to the corners of the button then the [borderColor]
  ///attributes can be used to change the color of the border
  final bool isOutline;

  ///Changes borderColor when [isOutline] is true
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
