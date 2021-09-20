import 'package:flutter/material.dart';
import 'package:neo_reusables/src/commons/size_config.dart';

class XMargin extends StatelessWidget {

  final double width;

  const XMargin(this.width);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig().sw(width).toDouble(),
    );
  }
}
