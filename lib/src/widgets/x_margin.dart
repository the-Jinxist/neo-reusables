import 'package:flutter/material.dart';

import 'package:neo_reusables/src/commons/size_config.dart';

class XMargin extends StatelessWidget {

  final double width;

  const XMargin(
    Key? key,
    this.width,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig().sw(width).toDouble(),
    );
  }
}
